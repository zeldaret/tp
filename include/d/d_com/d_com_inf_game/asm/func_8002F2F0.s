/* 8002F2F0 0002C230  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8002F2F4 0002C234  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8002F2F8 0002C238  88 03 00 98 */ lbz r0, 0x98(r3)
/* 8002F2FC 0002C23C  7C 00 07 74 */ extsb r0, r0
/* 8002F300 0002C240  54 00 0F FE */ srwi r0, r0, 0x1f
/* 8002F304 0002C244  68 00 00 01 */ xori r0, r0, 1
/* 8002F308 0002C248  54 03 06 3E */ clrlwi r3, r0, 0x18
/* 8002F30C 0002C24C  4E 80 00 20 */ blr
