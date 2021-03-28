lbl_800781D8:
/* 800781D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800781DC  7C 08 02 A6 */	mflr r0
/* 800781E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800781E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800781E8  7C 7F 1B 78 */	mr r31, r3
/* 800781EC  4B FF FA 7D */	bl __ct__11dBgS_LinChkFv
/* 800781F0  3C 60 80 3B */	lis r3, __vt__16dBgS_ArrowLinChk@ha
/* 800781F4  38 63 B8 50 */	addi r3, r3, __vt__16dBgS_ArrowLinChk@l
/* 800781F8  90 7F 00 10 */	stw r3, 0x10(r31)
/* 800781FC  38 03 00 0C */	addi r0, r3, 0xc
/* 80078200  90 1F 00 20 */	stw r0, 0x20(r31)
/* 80078204  38 03 00 18 */	addi r0, r3, 0x18
/* 80078208  90 1F 00 58 */	stw r0, 0x58(r31)
/* 8007820C  38 03 00 24 */	addi r0, r3, 0x24
/* 80078210  90 1F 00 68 */	stw r0, 0x68(r31)
/* 80078214  38 7F 00 58 */	addi r3, r31, 0x58
/* 80078218  48 00 0C 99 */	bl SetArrow__16dBgS_PolyPassChkFv
/* 8007821C  80 1F 00 6C */	lwz r0, 0x6c(r31)
/* 80078220  60 00 00 01 */	ori r0, r0, 1
/* 80078224  90 1F 00 6C */	stw r0, 0x6c(r31)
/* 80078228  7F E3 FB 78 */	mr r3, r31
/* 8007822C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80078230  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80078234  7C 08 03 A6 */	mtlr r0
/* 80078238  38 21 00 10 */	addi r1, r1, 0x10
/* 8007823C  4E 80 00 20 */	blr 
