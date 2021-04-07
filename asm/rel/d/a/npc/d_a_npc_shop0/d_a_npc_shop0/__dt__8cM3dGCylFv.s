lbl_80AEAC10:
/* 80AEAC10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AEAC14  7C 08 02 A6 */	mflr r0
/* 80AEAC18  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AEAC1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AEAC20  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AEAC24  41 82 00 1C */	beq lbl_80AEAC40
/* 80AEAC28  3C A0 80 AF */	lis r5, __vt__8cM3dGCyl@ha /* 0x80AEBDA8@ha */
/* 80AEAC2C  38 05 BD A8 */	addi r0, r5, __vt__8cM3dGCyl@l /* 0x80AEBDA8@l */
/* 80AEAC30  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80AEAC34  7C 80 07 35 */	extsh. r0, r4
/* 80AEAC38  40 81 00 08 */	ble lbl_80AEAC40
/* 80AEAC3C  4B 7E 41 01 */	bl __dl__FPv
lbl_80AEAC40:
/* 80AEAC40  7F E3 FB 78 */	mr r3, r31
/* 80AEAC44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AEAC48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AEAC4C  7C 08 03 A6 */	mtlr r0
/* 80AEAC50  38 21 00 10 */	addi r1, r1, 0x10
/* 80AEAC54  4E 80 00 20 */	blr 
