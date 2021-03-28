lbl_8048EA30:
/* 8048EA30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048EA34  7C 08 02 A6 */	mflr r0
/* 8048EA38  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048EA3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8048EA40  93 C1 00 08 */	stw r30, 8(r1)
/* 8048EA44  7C 7E 1B 79 */	or. r30, r3, r3
/* 8048EA48  7C 9F 23 78 */	mr r31, r4
/* 8048EA4C  41 82 00 6C */	beq lbl_8048EAB8
/* 8048EA50  3C 60 80 49 */	lis r3, __vt__12daTag_KMsg_c@ha
/* 8048EA54  38 03 EB A0 */	addi r0, r3, __vt__12daTag_KMsg_c@l
/* 8048EA58  90 1E 05 C8 */	stw r0, 0x5c8(r30)
/* 8048EA5C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 8048EA60  54 03 46 3E */	srwi r3, r0, 0x18
/* 8048EA64  38 03 FF 01 */	addi r0, r3, -255
/* 8048EA68  30 00 FF FF */	addic r0, r0, -1
/* 8048EA6C  7C 00 01 10 */	subfe r0, r0, r0
/* 8048EA70  7C 60 00 78 */	andc r0, r3, r0
/* 8048EA74  2C 00 00 03 */	cmpwi r0, 3
/* 8048EA78  40 82 00 18 */	bne lbl_8048EA90
/* 8048EA7C  38 7E 05 68 */	addi r3, r30, 0x568
/* 8048EA80  3C 80 80 49 */	lis r4, struct_8048EAFC+0x0@ha
/* 8048EA84  38 84 EA FC */	addi r4, r4, struct_8048EAFC+0x0@l
/* 8048EA88  38 84 00 23 */	addi r4, r4, 0x23
/* 8048EA8C  4B B9 E5 7C */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
lbl_8048EA90:
/* 8048EA90  38 7E 05 70 */	addi r3, r30, 0x570
/* 8048EA94  38 80 FF FF */	li r4, -1
/* 8048EA98  4B DB B4 B0 */	b __dt__10dMsgFlow_cFv
/* 8048EA9C  7F C3 F3 78 */	mr r3, r30
/* 8048EAA0  38 80 00 00 */	li r4, 0
/* 8048EAA4  4B B8 A1 E8 */	b __dt__10fopAc_ac_cFv
/* 8048EAA8  7F E0 07 35 */	extsh. r0, r31
/* 8048EAAC  40 81 00 0C */	ble lbl_8048EAB8
/* 8048EAB0  7F C3 F3 78 */	mr r3, r30
/* 8048EAB4  4B E4 02 88 */	b __dl__FPv
lbl_8048EAB8:
/* 8048EAB8  7F C3 F3 78 */	mr r3, r30
/* 8048EABC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8048EAC0  83 C1 00 08 */	lwz r30, 8(r1)
/* 8048EAC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048EAC8  7C 08 03 A6 */	mtlr r0
/* 8048EACC  38 21 00 10 */	addi r1, r1, 0x10
/* 8048EAD0  4E 80 00 20 */	blr 
