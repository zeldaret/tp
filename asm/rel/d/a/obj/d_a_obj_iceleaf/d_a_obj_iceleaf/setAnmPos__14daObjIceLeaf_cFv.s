lbl_80C24BC4:
/* 80C24BC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C24BC8  7C 08 02 A6 */	mflr r0
/* 80C24BCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C24BD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C24BD4  7C 7F 1B 78 */	mr r31, r3
/* 80C24BD8  3C 60 80 C2 */	lis r3, l_arcName@ha /* 0x80C25DD0@ha */
/* 80C24BDC  38 63 5D D0 */	addi r3, r3, l_arcName@l /* 0x80C25DD0@l */
/* 80C24BE0  80 63 00 00 */	lwz r3, 0(r3)
/* 80C24BE4  38 80 00 04 */	li r4, 4
/* 80C24BE8  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C24BEC  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C24BF0  3C A5 00 02 */	addis r5, r5, 2
/* 80C24BF4  38 C0 00 80 */	li r6, 0x80
/* 80C24BF8  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80C24BFC  4B 41 76 F1 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 80C24C00  38 80 00 00 */	li r4, 0
/* 80C24C04  38 BF 09 08 */	addi r5, r31, 0x908
/* 80C24C08  81 83 00 00 */	lwz r12, 0(r3)
/* 80C24C0C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 80C24C10  7D 89 03 A6 */	mtctr r12
/* 80C24C14  4E 80 04 21 */	bctrl 
/* 80C24C18  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C24C1C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C24C20  C0 3F 09 1C */	lfs f1, 0x91c(r31)
/* 80C24C24  C0 5F 09 20 */	lfs f2, 0x920(r31)
/* 80C24C28  C0 7F 09 24 */	lfs f3, 0x924(r31)
/* 80C24C2C  4B 72 1C BD */	bl PSMTXTrans
/* 80C24C30  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80C24C34  4B 3E 81 A1 */	bl transM__14mDoMtx_stack_cFRC4cXyz
/* 80C24C38  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C24C3C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C24C40  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80C24C44  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80C24C48  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80C24C4C  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80C24C50  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80C24C54  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80C24C58  A8 7F 04 E4 */	lha r3, 0x4e4(r31)
/* 80C24C5C  A8 1F 09 14 */	lha r0, 0x914(r31)
/* 80C24C60  7C 03 02 14 */	add r0, r3, r0
/* 80C24C64  B0 1F 04 E4 */	sth r0, 0x4e4(r31)
/* 80C24C68  A8 7F 04 E6 */	lha r3, 0x4e6(r31)
/* 80C24C6C  A8 1F 09 16 */	lha r0, 0x916(r31)
/* 80C24C70  7C 03 02 14 */	add r0, r3, r0
/* 80C24C74  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 80C24C78  A8 7F 04 E8 */	lha r3, 0x4e8(r31)
/* 80C24C7C  A8 1F 09 18 */	lha r0, 0x918(r31)
/* 80C24C80  7C 03 02 14 */	add r0, r3, r0
/* 80C24C84  B0 1F 04 E8 */	sth r0, 0x4e8(r31)
/* 80C24C88  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C24C8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C24C90  7C 08 03 A6 */	mtlr r0
/* 80C24C94  38 21 00 10 */	addi r1, r1, 0x10
/* 80C24C98  4E 80 00 20 */	blr 
