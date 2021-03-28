lbl_80034FCC:
/* 80034FCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80034FD0  7C 08 02 A6 */	mflr r0
/* 80034FD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80034FD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80034FDC  7C 7F 1B 78 */	mr r31, r3
/* 80034FE0  48 00 00 3D */	bl init__10dSv_save_cFv
/* 80034FE4  38 7F 09 58 */	addi r3, r31, 0x958
/* 80034FE8  4B FF FA 7D */	bl init__12dSv_memory_cFv
/* 80034FEC  38 7F 09 78 */	addi r3, r31, 0x978
/* 80034FF0  38 80 FF FF */	li r4, -1
/* 80034FF4  4B FF FB 21 */	bl init__12dSv_danBit_cFSc
/* 80034FF8  7F E3 FB 78 */	mr r3, r31
/* 80034FFC  48 00 01 51 */	bl initZone__10dSv_info_cFv
/* 80035000  38 7F 0D D8 */	addi r3, r31, 0xdd8
/* 80035004  4B FF F9 51 */	bl init__11dSv_event_cFv
/* 80035008  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8003500C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80035010  7C 08 03 A6 */	mtlr r0
/* 80035014  38 21 00 10 */	addi r1, r1, 0x10
/* 80035018  4E 80 00 20 */	blr 
