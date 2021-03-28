lbl_80286648:
/* 80286648  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028664C  7C 08 02 A6 */	mflr r0
/* 80286650  90 01 00 14 */	stw r0, 0x14(r1)
/* 80286654  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80286658  80 63 00 08 */	lwz r3, 8(r3)
/* 8028665C  1C 05 00 14 */	mulli r0, r5, 0x14
/* 80286660  7F E3 02 14 */	add r31, r3, r0
/* 80286664  38 64 00 60 */	addi r3, r4, 0x60
/* 80286668  80 86 00 00 */	lwz r4, 0(r6)
/* 8028666C  4B FF E2 69 */	bl getObject_index__Q37JStudio3fvb8TControlFUl
/* 80286670  28 03 00 00 */	cmplwi r3, 0
/* 80286674  40 82 00 0C */	bne lbl_80286680
/* 80286678  38 80 00 00 */	li r4, 0
/* 8028667C  48 00 00 08 */	b lbl_80286684
lbl_80286680:
/* 80286680  80 83 00 14 */	lwz r4, 0x14(r3)
lbl_80286684:
/* 80286684  3C 60 80 28 */	lis r3, update_functionValue___Q27JStudio14TVariableValueFPQ27JStudio14TVariableValued@ha
/* 80286688  38 03 5F 08 */	addi r0, r3, update_functionValue___Q27JStudio14TVariableValueFPQ27JStudio14TVariableValued@l
/* 8028668C  90 1F 00 08 */	stw r0, 8(r31)
/* 80286690  38 00 00 00 */	li r0, 0
/* 80286694  90 1F 00 04 */	stw r0, 4(r31)
/* 80286698  90 9F 00 0C */	stw r4, 0xc(r31)
/* 8028669C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802866A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802866A4  7C 08 03 A6 */	mtlr r0
/* 802866A8  38 21 00 10 */	addi r1, r1, 0x10
/* 802866AC  4E 80 00 20 */	blr 
