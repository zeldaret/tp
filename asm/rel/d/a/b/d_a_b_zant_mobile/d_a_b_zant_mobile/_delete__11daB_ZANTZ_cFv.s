lbl_80651D1C:
/* 80651D1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80651D20  7C 08 02 A6 */	mflr r0
/* 80651D24  90 01 00 14 */	stw r0, 0x14(r1)
/* 80651D28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80651D2C  7C 7F 1B 78 */	mr r31, r3
/* 80651D30  88 03 0D 10 */	lbz r0, 0xd10(r3)
/* 80651D34  28 00 00 00 */	cmplwi r0, 0
/* 80651D38  41 82 00 10 */	beq lbl_80651D48
/* 80651D3C  38 00 00 00 */	li r0, 0
/* 80651D40  3C 60 80 65 */	lis r3, data_80652928@ha
/* 80651D44  98 03 29 28 */	stb r0, data_80652928@l(r3)
lbl_80651D48:
/* 80651D48  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 80651D4C  3C 80 80 65 */	lis r4, stringBase0@ha
/* 80651D50  38 84 27 D0 */	addi r4, r4, stringBase0@l
/* 80651D54  38 84 00 06 */	addi r4, r4, 6
/* 80651D58  4B 9D B2 B0 */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80651D5C  80 9F 06 A4 */	lwz r4, 0x6a4(r31)
/* 80651D60  28 04 00 00 */	cmplwi r4, 0
/* 80651D64  41 82 00 14 */	beq lbl_80651D78
/* 80651D68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80651D6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80651D70  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80651D74  4B A2 24 DC */	b Release__4cBgSFP9dBgW_Base
lbl_80651D78:
/* 80651D78  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 80651D7C  81 9F 05 BC */	lwz r12, 0x5bc(r31)
/* 80651D80  81 8C 00 08 */	lwz r12, 8(r12)
/* 80651D84  7D 89 03 A6 */	mtctr r12
/* 80651D88  4E 80 04 21 */	bctrl 
/* 80651D8C  38 60 00 01 */	li r3, 1
/* 80651D90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80651D94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80651D98  7C 08 03 A6 */	mtlr r0
/* 80651D9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80651DA0  4E 80 00 20 */	blr 
