/* 8021E2B4 0021B1F4  3C 60 80 43 */ lis r3, g_meter2_info@ha
/* 8021E2B8 0021B1F8  38 63 01 88 */ addi r3, r3, g_meter2_info@l
/* 8021E2BC 0021B1FC  80 63 00 1C */ lwz r3, 0x1c(r3)
/* 8021E2C0 0021B200  A8 63 01 92 */ lha r3, 0x192(r3)
/* 8021E2C4 0021B204  4E 80 00 20 */ blr
