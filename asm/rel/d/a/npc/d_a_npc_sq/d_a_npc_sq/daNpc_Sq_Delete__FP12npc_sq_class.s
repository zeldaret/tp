lbl_80AF6D5C:
/* 80AF6D5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF6D60  7C 08 02 A6 */	mflr r0
/* 80AF6D64  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF6D68  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AF6D6C  7C 7F 1B 78 */	mr r31, r3
/* 80AF6D70  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 80AF6D74  3C 80 80 AF */	lis r4, stringBase0@ha
/* 80AF6D78  38 84 74 A4 */	addi r4, r4, stringBase0@l
/* 80AF6D7C  4B 53 62 8C */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 80AF6D80  88 1F 0A 40 */	lbz r0, 0xa40(r31)
/* 80AF6D84  28 00 00 00 */	cmplwi r0, 0
/* 80AF6D88  41 82 00 10 */	beq lbl_80AF6D98
/* 80AF6D8C  38 00 00 00 */	li r0, 0
/* 80AF6D90  3C 60 80 AF */	lis r3, data_80AF75C0@ha
/* 80AF6D94  98 03 75 C0 */	stb r0, data_80AF75C0@l(r3)
lbl_80AF6D98:
/* 80AF6D98  38 60 00 01 */	li r3, 1
/* 80AF6D9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AF6DA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF6DA4  7C 08 03 A6 */	mtlr r0
/* 80AF6DA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF6DAC  4E 80 00 20 */	blr 
