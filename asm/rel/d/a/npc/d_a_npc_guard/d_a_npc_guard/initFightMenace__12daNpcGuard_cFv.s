lbl_809F0778:
/* 809F0778  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F077C  7C 08 02 A6 */	mflr r0
/* 809F0780  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F0784  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809F0788  7C 7F 1B 78 */	mr r31, r3
/* 809F078C  38 80 00 2B */	li r4, 0x2b
/* 809F0790  80 A3 0D 84 */	lwz r5, 0xd84(r3)
/* 809F0794  4B 76 79 5D */	bl getAnmP__10daNpcCd2_cFii
/* 809F0798  7C 64 1B 78 */	mr r4, r3
/* 809F079C  7F E3 FB 78 */	mr r3, r31
/* 809F07A0  3C A0 80 9F */	lis r5, lit_3900@ha /* 0x809F2C50@ha */
/* 809F07A4  C0 25 2C 50 */	lfs f1, lit_3900@l(r5)  /* 0x809F2C50@l */
/* 809F07A8  3C A0 80 9F */	lis r5, lit_3901@ha /* 0x809F2C54@ha */
/* 809F07AC  C0 45 2C 54 */	lfs f2, lit_3901@l(r5)  /* 0x809F2C54@l */
/* 809F07B0  38 A0 00 00 */	li r5, 0
/* 809F07B4  38 C0 00 00 */	li r6, 0
/* 809F07B8  38 E0 FF FF */	li r7, -1
/* 809F07BC  4B 76 87 45 */	bl setAnm__10daNpcCd2_cFP18J3DAnmTransformKeyffiii
/* 809F07C0  38 7F 05 94 */	addi r3, r31, 0x594
/* 809F07C4  38 80 00 02 */	li r4, 2
/* 809F07C8  4B 8D 06 51 */	bl playVoice__17Z2CreatureCitizenFi
/* 809F07CC  38 60 00 5A */	li r3, 0x5a
/* 809F07D0  38 80 00 3C */	li r4, 0x3c
/* 809F07D4  48 00 1D 39 */	bl func_809F250C
/* 809F07D8  90 7F 0D 88 */	stw r3, 0xd88(r31)
/* 809F07DC  38 00 00 00 */	li r0, 0
/* 809F07E0  90 1F 0D 9C */	stw r0, 0xd9c(r31)
/* 809F07E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809F07E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F07EC  7C 08 03 A6 */	mtlr r0
/* 809F07F0  38 21 00 10 */	addi r1, r1, 0x10
/* 809F07F4  4E 80 00 20 */	blr 
