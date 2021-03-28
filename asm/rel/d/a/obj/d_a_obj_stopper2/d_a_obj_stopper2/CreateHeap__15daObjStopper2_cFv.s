lbl_80CEF57C:
/* 80CEF57C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CEF580  7C 08 02 A6 */	mflr r0
/* 80CEF584  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CEF588  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CEF58C  7C 7F 1B 78 */	mr r31, r3
/* 80CEF590  4B FF FD D9 */	bl getStopModelData__15daObjStopper2_cFv
/* 80CEF594  3C 80 00 08 */	lis r4, 8
/* 80CEF598  3C A0 11 00 */	lis r5, 0x1100 /* 0x11000084@ha */
/* 80CEF59C  38 A5 00 84 */	addi r5, r5, 0x0084 /* 0x11000084@l */
/* 80CEF5A0  4B 32 56 B4 */	b mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80CEF5A4  90 7F 05 70 */	stw r3, 0x570(r31)
/* 80CEF5A8  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80CEF5AC  30 03 FF FF */	addic r0, r3, -1
/* 80CEF5B0  7C 60 19 10 */	subfe r3, r0, r3
/* 80CEF5B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CEF5B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CEF5BC  7C 08 03 A6 */	mtlr r0
/* 80CEF5C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CEF5C4  4E 80 00 20 */	blr 
