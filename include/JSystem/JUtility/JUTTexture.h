#ifndef JUTTEXTURE_H
#define JUTTEXTURE_H

#include "dolphin/types.h"

struct ResTIMG { /* Acts as the header to image data. Usually texture data immediately follows it,
                    so any pointer arithmetic to go past the end of this structure is so that a
                    variable sized allocated buffer can be accessed. */
    u8 texture_format;
    bool is_alpha_enabled;
    u16 texture_width;
    u16 texture_height;
    u8 wrap_s;
    u8 wrap_t;
    bool is_palettes_enabled;
    u8 palette_format;
    u16 palette_count;
    u32 palette_offset;
    bool is_mip_map_enabled;
    bool do_edge_lod;
    bool bias_clamp;
    u8 max_anisotropy;
    u8 min_filter;
    u8 mag_filter;
    u8 min_lod;
    u8 max_lod;
    u8 num_mipmaps;
    u8 unknown;
    u16 lod_bias;
    u32 texture_data_offset;
};

#endif /* JUTTEXTURE_H */
