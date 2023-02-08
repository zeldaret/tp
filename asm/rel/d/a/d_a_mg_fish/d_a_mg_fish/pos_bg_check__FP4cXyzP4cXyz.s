lbl_8052BF68:
/* 8052BF68  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8052BF6C  7C 08 02 A6 */	mflr r0
/* 8052BF70  90 01 00 84 */	stw r0, 0x84(r1)
/* 8052BF74  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 8052BF78  93 C1 00 78 */	stw r30, 0x78(r1)
/* 8052BF7C  7C 7E 1B 78 */	mr r30, r3
/* 8052BF80  7C 9F 23 78 */	mr r31, r4
/* 8052BF84  38 61 00 08 */	addi r3, r1, 8
/* 8052BF88  4B B4 BC E1 */	bl __ct__11dBgS_LinChkFv
/* 8052BF8C  38 61 00 08 */	addi r3, r1, 8
/* 8052BF90  7F C4 F3 78 */	mr r4, r30
/* 8052BF94  7F E5 FB 78 */	mr r5, r31
/* 8052BF98  38 C0 00 00 */	li r6, 0
/* 8052BF9C  4B B4 BD C9 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8052BFA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8052BFA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8052BFA8  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8052BFAC  38 81 00 08 */	addi r4, r1, 8
/* 8052BFB0  4B B4 84 05 */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 8052BFB4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8052BFB8  41 82 00 18 */	beq lbl_8052BFD0
/* 8052BFBC  38 61 00 08 */	addi r3, r1, 8
/* 8052BFC0  38 80 FF FF */	li r4, -1
/* 8052BFC4  4B B4 BD 19 */	bl __dt__11dBgS_LinChkFv
/* 8052BFC8  38 60 00 01 */	li r3, 1
/* 8052BFCC  48 00 00 14 */	b lbl_8052BFE0
lbl_8052BFD0:
/* 8052BFD0  38 61 00 08 */	addi r3, r1, 8
/* 8052BFD4  38 80 FF FF */	li r4, -1
/* 8052BFD8  4B B4 BD 05 */	bl __dt__11dBgS_LinChkFv
/* 8052BFDC  38 60 00 00 */	li r3, 0
lbl_8052BFE0:
/* 8052BFE0  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 8052BFE4  83 C1 00 78 */	lwz r30, 0x78(r1)
/* 8052BFE8  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8052BFEC  7C 08 03 A6 */	mtlr r0
/* 8052BFF0  38 21 00 80 */	addi r1, r1, 0x80
/* 8052BFF4  4E 80 00 20 */	blr 
