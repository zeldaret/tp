lbl_80CBBAF4:
/* 80CBBAF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CBBAF8  7C 08 02 A6 */	mflr r0
/* 80CBBAFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CBBB00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CBBB04  93 C1 00 08 */	stw r30, 8(r1)
/* 80CBBB08  7C 7E 1B 78 */	mr r30, r3
/* 80CBBB0C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CBBB10  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80CBBB14  38 7F 4F F8 */	addi r3, r31, 0x4ff8
/* 80CBBB18  A8 9E 0B A2 */	lha r4, 0xba2(r30)
/* 80CBBB1C  4B 38 BF 5C */	b endCheck__16dEvent_manager_cFs
/* 80CBBB20  2C 03 00 00 */	cmpwi r3, 0
/* 80CBBB24  41 82 00 18 */	beq lbl_80CBBB3C
/* 80CBBB28  38 00 00 02 */	li r0, 2
/* 80CBBB2C  98 1E 0B A0 */	stb r0, 0xba0(r30)
/* 80CBBB30  38 7F 4E C8 */	addi r3, r31, 0x4ec8
/* 80CBBB34  4B 38 69 34 */	b reset__14dEvt_control_cFv
/* 80CBBB38  48 00 00 0C */	b lbl_80CBBB44
lbl_80CBBB3C:
/* 80CBBB3C  7F C3 F3 78 */	mr r3, r30
/* 80CBBB40  48 00 00 C5 */	bl demoProc__12daObjRgate_cFv
lbl_80CBBB44:
/* 80CBBB44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CBBB48  83 C1 00 08 */	lwz r30, 8(r1)
/* 80CBBB4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBBB50  7C 08 03 A6 */	mtlr r0
/* 80CBBB54  38 21 00 10 */	addi r1, r1, 0x10
/* 80CBBB58  4E 80 00 20 */	blr 
