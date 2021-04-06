lbl_80BB6858:
/* 80BB6858  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB685C  7C 08 02 A6 */	mflr r0
/* 80BB6860  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB6864  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BB6868  7C 7F 1B 78 */	mr r31, r3
/* 80BB686C  4B 46 22 F9 */	bl __ct__10fopAc_ac_cFv
/* 80BB6870  3C 60 80 BC */	lis r3, __vt__11daBkyRock_c@ha /* 0x80BB80D8@ha */
/* 80BB6874  38 03 80 D8 */	addi r0, r3, __vt__11daBkyRock_c@l /* 0x80BB80D8@l */
/* 80BB6878  90 1F 05 70 */	stw r0, 0x570(r31)
/* 80BB687C  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 80BB6880  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 80BB6884  90 1F 05 C8 */	stw r0, 0x5c8(r31)
/* 80BB6888  38 7F 05 CC */	addi r3, r31, 0x5cc
/* 80BB688C  4B 4C CE D5 */	bl __ct__10dCcD_GSttsFv
/* 80BB6890  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 80BB6894  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 80BB6898  90 7F 05 C8 */	stw r3, 0x5c8(r31)
/* 80BB689C  38 03 00 20 */	addi r0, r3, 0x20
/* 80BB68A0  90 1F 05 CC */	stw r0, 0x5cc(r31)
/* 80BB68A4  38 7F 05 EC */	addi r3, r31, 0x5ec
/* 80BB68A8  3C 80 80 BB */	lis r4, __ct__8dCcD_CylFv@ha /* 0x80BB69EC@ha */
/* 80BB68AC  38 84 69 EC */	addi r4, r4, __ct__8dCcD_CylFv@l /* 0x80BB69EC@l */
/* 80BB68B0  3C A0 80 BB */	lis r5, __dt__8dCcD_CylFv@ha /* 0x80BB6920@ha */
/* 80BB68B4  38 A5 69 20 */	addi r5, r5, __dt__8dCcD_CylFv@l /* 0x80BB6920@l */
/* 80BB68B8  38 C0 01 3C */	li r6, 0x13c
/* 80BB68BC  38 E0 00 02 */	li r7, 2
/* 80BB68C0  4B 7A B4 A1 */	bl __construct_array
/* 80BB68C4  38 7F 08 70 */	addi r3, r31, 0x870
/* 80BB68C8  3C 80 80 BB */	lis r4, __ct__Q211daBkyRock_c10_pieceDataFv@ha /* 0x80BB6914@ha */
/* 80BB68CC  38 84 69 14 */	addi r4, r4, __ct__Q211daBkyRock_c10_pieceDataFv@l /* 0x80BB6914@l */
/* 80BB68D0  38 A0 00 00 */	li r5, 0
/* 80BB68D4  38 C0 00 58 */	li r6, 0x58
/* 80BB68D8  38 E0 00 14 */	li r7, 0x14
/* 80BB68DC  4B 7A B4 85 */	bl __construct_array
/* 80BB68E0  38 00 00 00 */	li r0, 0
/* 80BB68E4  90 1F 05 AC */	stw r0, 0x5ac(r31)
/* 80BB68E8  98 1F 05 78 */	stb r0, 0x578(r31)
/* 80BB68EC  38 7F 08 64 */	addi r3, r31, 0x864
/* 80BB68F0  38 80 00 00 */	li r4, 0
/* 80BB68F4  38 A0 00 0C */	li r5, 0xc
/* 80BB68F8  4B 44 CB 61 */	bl memset
/* 80BB68FC  7F E3 FB 78 */	mr r3, r31
/* 80BB6900  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BB6904  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB6908  7C 08 03 A6 */	mtlr r0
/* 80BB690C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB6910  4E 80 00 20 */	blr 
