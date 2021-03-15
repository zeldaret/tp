/* 801ADCA4 001AABE4  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 801ADCA8 001AABE8  7C 08 02 A6 */ mflr r0
/* 801ADCAC 001AABEC  90 01 00 14 */ stw r0, 0x14(r1)
/* 801ADCB0 001AABF0  93 E1 00 0C */ stw r31, 0xc(r1)
/* 801ADCB4 001AABF4  3C 60 80 43 */ lis r3, lbl_8042CA48@ha
/* 801ADCB8 001AABF8  3B E3 CA 48 */ addi r31, r3, lbl_8042CA48@l
/* 801ADCBC 001AABFC  38 7F 00 0C */ addi r3, r31, 0xc
/* 801ADCC0 001AAC00  4B FF 16 29 */ bl __ct__18dScnKy_env_light_cFv
/*.global __dt__18dScnKy_env_light_cFv*/
/* 801ADCC4 001AAC04  3C 80 80 1B */ lis r4, __dt__18dScnKy_env_light_cFv@ha
/*.global __dt__18dScnKy_env_light_cFv*/
/* 801ADCC8 001AAC08  38 84 DB BC */ addi r4, r4, __dt__18dScnKy_env_light_cFv@l
/* 801ADCCC 001AAC0C  38 BF 00 00 */ addi r5, r31, 0
/* 801ADCD0 001AAC10  48 1B 3F 55 */ bl func_80361C24
/* 801ADCD4 001AAC14  38 7F 13 28 */ addi r3, r31, 0x1328
/* 801ADCD8 001AAC18  48 11 84 45 */ bl __ct__10Z2EnvSeMgrFv
/*.global __dt__10Z2EnvSeMgrFv*/
/* 801ADCDC 001AAC1C  3C 80 80 2C */ lis r4, __dt__10Z2EnvSeMgrFv@ha
/*.global __dt__10Z2EnvSeMgrFv*/
/* 801ADCE0 001AAC20  38 84 65 40 */ addi r4, r4, __dt__10Z2EnvSeMgrFv@l
/* 801ADCE4 001AAC24  38 BF 13 1C */ addi r5, r31, 0x131c
/* 801ADCE8 001AAC28  48 1B 3F 3D */ bl func_80361C24
/* 801ADCEC 001AAC2C  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 801ADCF0 001AAC30  80 01 00 14 */ lwz r0, 0x14(r1)
/* 801ADCF4 001AAC34  7C 08 03 A6 */ mtlr r0
/* 801ADCF8 001AAC38  38 21 00 10 */ addi r1, r1, 0x10
/* 801ADCFC 001AAC3C  4E 80 00 20 */ blr
