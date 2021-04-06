lbl_80AA47FC:
/* 80AA47FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AA4800  7C 08 02 A6 */	mflr r0
/* 80AA4804  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AA4808  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AA480C  7C 7F 1B 78 */	mr r31, r3
/* 80AA4810  38 7F 08 50 */	addi r3, r31, 0x850
/* 80AA4814  38 80 00 D9 */	li r4, 0xd9
/* 80AA4818  38 A0 00 FF */	li r5, 0xff
/* 80AA481C  7F E6 FB 78 */	mr r6, r31
/* 80AA4820  4B 5D F0 41 */	bl Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80AA4824  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80AA4828  98 1F 08 72 */	stb r0, 0x872(r31)
/* 80AA482C  38 1F 08 50 */	addi r0, r31, 0x850
/* 80AA4830  90 1F 08 D0 */	stw r0, 0x8d0(r31)
/* 80AA4834  38 7F 08 8C */	addi r3, r31, 0x88c
/* 80AA4838  3C 80 80 39 */	lis r4, m_cylDat__10daNpcCd2_c@ha /* 0x80393950@ha */
/* 80AA483C  38 84 39 50 */	addi r4, r4, m_cylDat__10daNpcCd2_c@l /* 0x80393950@l */
/* 80AA4840  4B 5E 00 75 */	bl Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80AA4844  80 1F 0A 98 */	lwz r0, 0xa98(r31)
/* 80AA4848  38 7F 09 B0 */	addi r3, r31, 0x9b0
/* 80AA484C  2C 00 00 10 */	cmpwi r0, 0x10
/* 80AA4850  40 80 00 1C */	bge lbl_80AA486C
/* 80AA4854  3C 80 80 43 */	lis r4, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 80AA4858  38 84 86 1C */	addi r4, r4, l_Cd2_HIO@l /* 0x8042861C@l */
/* 80AA485C  1C 00 02 0C */	mulli r0, r0, 0x20c
/* 80AA4860  7C 84 02 14 */	add r4, r4, r0
/* 80AA4864  C0 24 02 04 */	lfs f1, 0x204(r4)
/* 80AA4868  48 00 00 18 */	b lbl_80AA4880
lbl_80AA486C:
/* 80AA486C  3C 80 80 43 */	lis r4, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 80AA4870  38 84 86 1C */	addi r4, r4, l_Cd2_HIO@l /* 0x8042861C@l */
/* 80AA4874  1C 00 02 3C */	mulli r0, r0, 0x23c
/* 80AA4878  7C 84 02 14 */	add r4, r4, r0
/* 80AA487C  C0 24 FF 34 */	lfs f1, -0xcc(r4)
lbl_80AA4880:
/* 80AA4880  4B 7C A9 81 */	bl SetR__8cM3dGCylFf
/* 80AA4884  80 1F 0A 98 */	lwz r0, 0xa98(r31)
/* 80AA4888  38 7F 09 B0 */	addi r3, r31, 0x9b0
/* 80AA488C  2C 00 00 10 */	cmpwi r0, 0x10
/* 80AA4890  40 80 00 1C */	bge lbl_80AA48AC
/* 80AA4894  3C 80 80 43 */	lis r4, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 80AA4898  38 84 86 1C */	addi r4, r4, l_Cd2_HIO@l /* 0x8042861C@l */
/* 80AA489C  1C 00 02 0C */	mulli r0, r0, 0x20c
/* 80AA48A0  7C 84 02 14 */	add r4, r4, r0
/* 80AA48A4  C0 24 02 00 */	lfs f1, 0x200(r4)
/* 80AA48A8  48 00 00 18 */	b lbl_80AA48C0
lbl_80AA48AC:
/* 80AA48AC  3C 80 80 43 */	lis r4, l_Cd2_HIO@ha /* 0x8042861C@ha */
/* 80AA48B0  38 84 86 1C */	addi r4, r4, l_Cd2_HIO@l /* 0x8042861C@l */
/* 80AA48B4  1C 00 02 3C */	mulli r0, r0, 0x23c
/* 80AA48B8  7C 84 02 14 */	add r4, r4, r0
/* 80AA48BC  C0 24 FF 30 */	lfs f1, -0xd0(r4)
lbl_80AA48C0:
/* 80AA48C0  4B 7C A9 39 */	bl SetH__8cM3dGCylFf
/* 80AA48C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AA48C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AA48CC  7C 08 03 A6 */	mtlr r0
/* 80AA48D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AA48D4  4E 80 00 20 */	blr 
