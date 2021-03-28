lbl_80B0B918:
/* 80B0B918  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B0B91C  7C 08 02 A6 */	mflr r0
/* 80B0B920  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B0B924  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B0B928  7C 7F 1B 78 */	mr r31, r3
/* 80B0B92C  38 7F 05 68 */	addi r3, r31, 0x568
/* 80B0B930  3C 80 80 B1 */	lis r4, struct_80B0C3A0+0x0@ha
/* 80B0B934  38 84 C3 A0 */	addi r4, r4, struct_80B0C3A0+0x0@l
/* 80B0B938  4B 52 16 D0 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80B0B93C  88 1F 0B 40 */	lbz r0, 0xb40(r31)
/* 80B0B940  28 00 00 00 */	cmplwi r0, 0
/* 80B0B944  41 82 00 10 */	beq lbl_80B0B954
/* 80B0B948  38 00 00 00 */	li r0, 0
/* 80B0B94C  3C 60 80 B1 */	lis r3, data_80B0C5FC@ha
/* 80B0B950  98 03 C5 FC */	stb r0, data_80B0C5FC@l(r3)
lbl_80B0B954:
/* 80B0B954  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 80B0B958  28 00 00 00 */	cmplwi r0, 0
/* 80B0B95C  41 82 00 18 */	beq lbl_80B0B974
/* 80B0B960  38 7F 05 74 */	addi r3, r31, 0x574
/* 80B0B964  81 9F 05 74 */	lwz r12, 0x574(r31)
/* 80B0B968  81 8C 00 08 */	lwz r12, 8(r12)
/* 80B0B96C  7D 89 03 A6 */	mtctr r12
/* 80B0B970  4E 80 04 21 */	bctrl 
lbl_80B0B974:
/* 80B0B974  38 60 00 01 */	li r3, 1
/* 80B0B978  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B0B97C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B0B980  7C 08 03 A6 */	mtlr r0
/* 80B0B984  38 21 00 10 */	addi r1, r1, 0x10
/* 80B0B988  4E 80 00 20 */	blr 
