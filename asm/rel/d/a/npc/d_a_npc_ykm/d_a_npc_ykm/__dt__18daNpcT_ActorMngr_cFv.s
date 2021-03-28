lbl_80B5C690:
/* 80B5C690  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B5C694  7C 08 02 A6 */	mflr r0
/* 80B5C698  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B5C69C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B5C6A0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B5C6A4  41 82 00 1C */	beq lbl_80B5C6C0
/* 80B5C6A8  3C A0 80 B6 */	lis r5, __vt__18daNpcT_ActorMngr_c@ha
/* 80B5C6AC  38 05 EC 14 */	addi r0, r5, __vt__18daNpcT_ActorMngr_c@l
/* 80B5C6B0  90 1F 00 04 */	stw r0, 4(r31)
/* 80B5C6B4  7C 80 07 35 */	extsh. r0, r4
/* 80B5C6B8  40 81 00 08 */	ble lbl_80B5C6C0
/* 80B5C6BC  4B 77 26 80 */	b __dl__FPv
lbl_80B5C6C0:
/* 80B5C6C0  7F E3 FB 78 */	mr r3, r31
/* 80B5C6C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B5C6C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B5C6CC  7C 08 03 A6 */	mtlr r0
/* 80B5C6D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80B5C6D4  4E 80 00 20 */	blr 
