lbl_80D37A18:
/* 80D37A18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D37A1C  7C 08 02 A6 */	mflr r0
/* 80D37A20  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D37A24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D37A28  7C 7F 1B 78 */	mr r31, r3
/* 80D37A2C  4B 2E 11 39 */	bl __ct__10fopAc_ac_cFv
/* 80D37A30  3C 60 80 D4 */	lis r3, __vt__13daWindStone_c@ha /* 0x80D386B8@ha */
/* 80D37A34  38 03 86 B8 */	addi r0, r3, __vt__13daWindStone_c@l /* 0x80D386B8@l */
/* 80D37A38  90 1F 05 70 */	stw r0, 0x570(r31)
/* 80D37A3C  38 7F 05 74 */	addi r3, r31, 0x574
/* 80D37A40  4B 53 06 35 */	bl __ct__13cBgS_PolyInfoFv
/* 80D37A44  38 00 00 00 */	li r0, 0
/* 80D37A48  90 1F 05 88 */	stw r0, 0x588(r31)
/* 80D37A4C  98 1F 05 C4 */	stb r0, 0x5c4(r31)
/* 80D37A50  7F E3 FB 78 */	mr r3, r31
/* 80D37A54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D37A58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D37A5C  7C 08 03 A6 */	mtlr r0
/* 80D37A60  38 21 00 10 */	addi r1, r1, 0x10
/* 80D37A64  4E 80 00 20 */	blr 
