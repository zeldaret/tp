lbl_80A865FC:
/* 80A865FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A86600  7C 08 02 A6 */	mflr r0
/* 80A86604  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A86608  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A8660C  7C 7F 1B 78 */	mr r31, r3
/* 80A86610  A0 03 0E 0A */	lhz r0, 0xe0a(r3)
/* 80A86614  2C 00 00 02 */	cmpwi r0, 2
/* 80A86618  41 82 00 38 */	beq lbl_80A86650
/* 80A8661C  40 80 00 7C */	bge lbl_80A86698
/* 80A86620  2C 00 00 00 */	cmpwi r0, 0
/* 80A86624  41 82 00 0C */	beq lbl_80A86630
/* 80A86628  48 00 00 70 */	b lbl_80A86698
/* 80A8662C  48 00 00 6C */	b lbl_80A86698
lbl_80A86630:
/* 80A86630  3C 60 80 A9 */	lis r3, lit_4463@ha /* 0x80A884D0@ha */
/* 80A86634  C0 03 84 D0 */	lfs f0, lit_4463@l(r3)  /* 0x80A884D0@l */
/* 80A86638  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80A8663C  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80A86640  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80A86644  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80A86648  38 00 00 02 */	li r0, 2
/* 80A8664C  B0 1F 0E 0A */	sth r0, 0xe0a(r31)
lbl_80A86650:
/* 80A86650  7F E3 FB 78 */	mr r3, r31
/* 80A86654  3C 80 80 A9 */	lis r4, m__19daNpc_myna2_Param_c@ha /* 0x80A88434@ha */
/* 80A86658  38 A4 84 34 */	addi r5, r4, m__19daNpc_myna2_Param_c@l /* 0x80A88434@l */
/* 80A8665C  A8 85 00 66 */	lha r4, 0x66(r5)
/* 80A86660  C0 25 00 44 */	lfs f1, 0x44(r5)
/* 80A86664  38 A0 00 00 */	li r5, 0
/* 80A86668  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80A8666C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A86670  7D 89 03 A6 */	mtctr r12
/* 80A86674  4E 80 04 21 */	bctrl 
/* 80A86678  7F E3 FB 78 */	mr r3, r31
/* 80A8667C  3C 80 80 A9 */	lis r4, m__19daNpc_myna2_Param_c@ha /* 0x80A88434@ha */
/* 80A86680  38 84 84 34 */	addi r4, r4, m__19daNpc_myna2_Param_c@l /* 0x80A88434@l */
/* 80A86684  A8 84 00 68 */	lha r4, 0x68(r4)
/* 80A86688  4B FF F5 1D */	bl setLookMode__13daNpc_myna2_cFi
/* 80A8668C  38 00 00 00 */	li r0, 0
/* 80A86690  B0 1F 09 E6 */	sth r0, 0x9e6(r31)
/* 80A86694  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_80A86698:
/* 80A86698  38 60 00 01 */	li r3, 1
/* 80A8669C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A866A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A866A4  7C 08 03 A6 */	mtlr r0
/* 80A866A8  38 21 00 10 */	addi r1, r1, 0x10
/* 80A866AC  4E 80 00 20 */	blr 
