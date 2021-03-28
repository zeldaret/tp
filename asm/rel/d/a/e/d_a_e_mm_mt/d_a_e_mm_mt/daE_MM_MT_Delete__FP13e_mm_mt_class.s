lbl_80724DFC:
/* 80724DFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80724E00  7C 08 02 A6 */	mflr r0
/* 80724E04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80724E08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80724E0C  7C 7F 1B 78 */	mr r31, r3
/* 80724E10  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 80724E14  3C 80 80 72 */	lis r4, stringBase0@ha
/* 80724E18  38 84 59 2C */	addi r4, r4, stringBase0@l
/* 80724E1C  4B 90 81 EC */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80724E20  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 80724E24  28 00 00 00 */	cmplwi r0, 0
/* 80724E28  41 82 00 18 */	beq lbl_80724E40
/* 80724E2C  38 7F 05 B4 */	addi r3, r31, 0x5b4
/* 80724E30  81 9F 05 B4 */	lwz r12, 0x5b4(r31)
/* 80724E34  81 8C 00 08 */	lwz r12, 8(r12)
/* 80724E38  7D 89 03 A6 */	mtctr r12
/* 80724E3C  4E 80 04 21 */	bctrl 
lbl_80724E40:
/* 80724E40  38 60 00 01 */	li r3, 1
/* 80724E44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80724E48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80724E4C  7C 08 03 A6 */	mtlr r0
/* 80724E50  38 21 00 10 */	addi r1, r1, 0x10
/* 80724E54  4E 80 00 20 */	blr 
