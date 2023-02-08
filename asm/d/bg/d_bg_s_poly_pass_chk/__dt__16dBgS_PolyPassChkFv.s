lbl_80078DB0:
/* 80078DB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80078DB4  7C 08 02 A6 */	mflr r0
/* 80078DB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80078DBC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80078DC0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80078DC4  41 82 00 30 */	beq lbl_80078DF4
/* 80078DC8  3C 60 80 3B */	lis r3, __vt__16dBgS_PolyPassChk@ha /* 0x803ABA38@ha */
/* 80078DCC  38 03 BA 38 */	addi r0, r3, __vt__16dBgS_PolyPassChk@l /* 0x803ABA38@l */
/* 80078DD0  90 1F 00 00 */	stw r0, 0(r31)
/* 80078DD4  41 82 00 10 */	beq lbl_80078DE4
/* 80078DD8  3C 60 80 3B */	lis r3, __vt__16cBgS_PolyPassChk@ha /* 0x803ABA44@ha */
/* 80078DDC  38 03 BA 44 */	addi r0, r3, __vt__16cBgS_PolyPassChk@l /* 0x803ABA44@l */
/* 80078DE0  90 1F 00 00 */	stw r0, 0(r31)
lbl_80078DE4:
/* 80078DE4  7C 80 07 35 */	extsh. r0, r4
/* 80078DE8  40 81 00 0C */	ble lbl_80078DF4
/* 80078DEC  7F E3 FB 78 */	mr r3, r31
/* 80078DF0  48 25 5F 4D */	bl __dl__FPv
lbl_80078DF4:
/* 80078DF4  7F E3 FB 78 */	mr r3, r31
/* 80078DF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80078DFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80078E00  7C 08 03 A6 */	mtlr r0
/* 80078E04  38 21 00 10 */	addi r1, r1, 0x10
/* 80078E08  4E 80 00 20 */	blr 
