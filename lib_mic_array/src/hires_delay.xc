#include <xs1.h>


/*
 * This implements a high resolution delay for 8 channels
 *
 *  TODO
 *  - double buffered tap arrays for safe changing of the taps
 *  - tests
 *  - 4, 8, 12, and 16 channel versions
 *  - use of synchroniser instead of a channel
 */

void hires_delay(
        streaming chanend c_4x_pdm_mic_0,
        streaming chanend c_4x_pdm_mic_1,
        streaming chanend c_sync,
        unsigned ch_memory_depth_log2,
        unsigned long long * unsafe p_taps,
        unsigned long long * unsafe p_shared_memory_array){


    unsafe {
    unsigned * unsafe taps = (unsigned * unsafe)p_taps;

        unsigned char * unsafe mic_array = (unsigned char * unsafe)p_shared_memory_array;
        unsigned index = 0;

        while(1){
            int t;
            asm volatile("inct %0, res[%1]":"=r"(t):"r"(c_sync));
            unsigned v=0, q=0;
            v += mic_array[zext(index-taps[0], ch_memory_depth_log2) * 8 + 0];
            v<<=8;
            v += mic_array[zext(index-taps[1], ch_memory_depth_log2) * 8 + 1];
            v<<=8;
            v += mic_array[zext(index-taps[2], ch_memory_depth_log2) * 8 + 2];
            v<<=8;
            v += mic_array[zext(index-taps[3], ch_memory_depth_log2) * 8 + 3];

            q += mic_array[zext(index-taps[4], ch_memory_depth_log2) * 8 + 4];
            q<<=8;
            q += mic_array[zext(index-taps[5], ch_memory_depth_log2) * 8 + 5];
            q<<=8;
            q += mic_array[zext(index-taps[6], ch_memory_depth_log2) * 8 + 6];
            q<<=8;
            q += mic_array[zext(index-taps[7], ch_memory_depth_log2) * 8 + 7];

            index++;
            index = zext(index, ch_memory_depth_log2);

            c_4x_pdm_mic_0 <: v;
            c_4x_pdm_mic_1 <: q;
        }
    }
}