#ifndef MSL_COMMON_SRC_CTYPE_H
#define MSL_COMMON_SRC_CTYPE_H

#ifdef __cplusplus
extern "C" {
#endif

#define EOF -1L

extern unsigned char __ctype_map[];
extern unsigned char __lower_map[];
extern unsigned char __upper_map[];

#define __control_char 0x01
#define __motion_char 0x02
#define __space_char 0x04
#define __punctuation 0x08
#define __digit 0x10
#define __hex_digit 0x20
#define __lower_case 0x40
#define __upper_case 0x80

#define __letter (__lower_case | __upper_case)
#define __alphanumeric (__letter | __digit)
#define __graphic (__alphanumeric | __punctuation)
#define __printable (__graphic | __space_char)
#define __whitespace (__motion_char | __space_char)
#define __control (__motion_char | __control_char)
#define __zero_fill(c) ((int)(unsigned char)(c))

int tolower(int);

#ifdef __cplusplus
}
#endif

#endif /* MSL_COMMON_SRC_CTYPE_H */
