lbl_80D42EE0:
/* 80D42EE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D42EE4  7C 08 02 A6 */	mflr r0
/* 80D42EE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D42EEC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D42EF0  7C 7F 1B 78 */	mr r31, r3
/* 80D42EF4  38 7F 05 A4 */	addi r3, r31, 0x5a4
/* 80D42EF8  38 80 00 FF */	li r4, 0xff
/* 80D42EFC  38 A0 00 FF */	li r5, 0xff
/* 80D42F00  7F E6 FB 78 */	mr r6, r31
/* 80D42F04  4B 34 09 5C */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80D42F08  38 7F 05 E0 */	addi r3, r31, 0x5e0
/* 80D42F0C  3C 80 80 D4 */	lis r4, l_sph_src@ha
/* 80D42F10  38 84 3D 9C */	addi r4, r4, l_sph_src@l
/* 80D42F14  4B 34 19 A0 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80D42F18  38 1F 05 A4 */	addi r0, r31, 0x5a4
/* 80D42F1C  90 1F 06 24 */	stw r0, 0x624(r31)
/* 80D42F20  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80D42F24  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 80D42F28  28 00 00 FF */	cmplwi r0, 0xff
/* 80D42F2C  40 82 00 08 */	bne lbl_80D42F34
/* 80D42F30  38 00 00 00 */	li r0, 0
lbl_80D42F34:
/* 80D42F34  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80D42F38  40 82 00 10 */	bne lbl_80D42F48
/* 80D42F3C  80 1F 06 0C */	lwz r0, 0x60c(r31)
/* 80D42F40  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80D42F44  90 1F 06 0C */	stw r0, 0x60c(r31)
lbl_80D42F48:
/* 80D42F48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D42F4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D42F50  7C 08 03 A6 */	mtlr r0
/* 80D42F54  38 21 00 10 */	addi r1, r1, 0x10
/* 80D42F58  4E 80 00 20 */	blr 
