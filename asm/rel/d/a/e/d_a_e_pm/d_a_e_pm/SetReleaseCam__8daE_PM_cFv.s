lbl_80743600:
/* 80743600  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80743604  7C 08 02 A6 */	mflr r0
/* 80743608  90 01 00 34 */	stw r0, 0x34(r1)
/* 8074360C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80743610  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80743614  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80743618  88 04 5D B0 */	lbz r0, 0x5db0(r4)
/* 8074361C  7C 00 07 74 */	extsb r0, r0
/* 80743620  1C 00 00 38 */	mulli r0, r0, 0x38
/* 80743624  7C 84 02 14 */	add r4, r4, r0
/* 80743628  83 E4 5D 74 */	lwz r31, 0x5d74(r4)
/* 8074362C  C0 03 06 8C */	lfs f0, 0x68c(r3)
/* 80743630  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80743634  C0 03 06 90 */	lfs f0, 0x690(r3)
/* 80743638  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8074363C  C0 03 06 94 */	lfs f0, 0x694(r3)
/* 80743640  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80743644  C0 03 06 98 */	lfs f0, 0x698(r3)
/* 80743648  D0 01 00 08 */	stfs f0, 8(r1)
/* 8074364C  C0 03 06 9C */	lfs f0, 0x69c(r3)
/* 80743650  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80743654  C0 03 06 A0 */	lfs f0, 0x6a0(r3)
/* 80743658  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8074365C  38 7F 02 48 */	addi r3, r31, 0x248
/* 80743660  38 81 00 14 */	addi r4, r1, 0x14
/* 80743664  38 A1 00 08 */	addi r5, r1, 8
/* 80743668  4B A3 D5 B1 */	bl Reset__9dCamera_cF4cXyz4cXyz
/* 8074366C  38 7F 02 48 */	addi r3, r31, 0x248
/* 80743670  4B A1 DE 3D */	bl Start__9dCamera_cFv
/* 80743674  38 7F 02 48 */	addi r3, r31, 0x248
/* 80743678  38 80 00 00 */	li r4, 0
/* 8074367C  4B A1 F9 91 */	bl SetTrimSize__9dCamera_cFl
/* 80743680  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80743684  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80743688  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 8074368C  4B 8F ED DD */	bl reset__14dEvt_control_cFv
/* 80743690  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80743694  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80743698  7C 08 03 A6 */	mtlr r0
/* 8074369C  38 21 00 30 */	addi r1, r1, 0x30
/* 807436A0  4E 80 00 20 */	blr 
