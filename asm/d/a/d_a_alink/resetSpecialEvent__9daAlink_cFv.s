lbl_80117C90:
/* 80117C90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80117C94  7C 08 02 A6 */	mflr r0
/* 80117C98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80117C9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80117CA0  93 C1 00 08 */	stw r30, 8(r1)
/* 80117CA4  7C 7E 1B 78 */	mr r30, r3
/* 80117CA8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80117CAC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80117CB0  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80117CB4  4B F2 A7 B5 */	bl reset__14dEvt_control_cFv
/* 80117CB8  28 1E 00 00 */	cmplwi r30, 0
/* 80117CBC  41 82 00 0C */	beq lbl_80117CC8
/* 80117CC0  83 FE 00 04 */	lwz r31, 4(r30)
/* 80117CC4  48 00 00 08 */	b lbl_80117CCC
lbl_80117CC8:
/* 80117CC8  3B E0 FF FF */	li r31, -1
lbl_80117CCC:
/* 80117CCC  48 06 99 75 */	bl dCam_getBody__Fv
/* 80117CD0  7F E4 FB 78 */	mr r4, r31
/* 80117CD4  4B F7 0E E9 */	bl EndEventCamera__9dCamera_cFi
/* 80117CD8  7F C3 F3 78 */	mr r3, r30
/* 80117CDC  48 00 00 1D */	bl endDemoMode__9daAlink_cFv
/* 80117CE0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80117CE4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80117CE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80117CEC  7C 08 03 A6 */	mtlr r0
/* 80117CF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80117CF4  4E 80 00 20 */	blr 
