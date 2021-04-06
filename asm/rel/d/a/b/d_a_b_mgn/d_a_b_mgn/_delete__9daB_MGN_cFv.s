lbl_8060EA38:
/* 8060EA38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8060EA3C  7C 08 02 A6 */	mflr r0
/* 8060EA40  90 01 00 14 */	stw r0, 0x14(r1)
/* 8060EA44  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8060EA48  7C 7F 1B 78 */	mr r31, r3
/* 8060EA4C  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 8060EA50  3C 80 80 61 */	lis r4, d_a_b_mgn__stringBase0@ha /* 0x80610084@ha */
/* 8060EA54  38 84 00 84 */	addi r4, r4, d_a_b_mgn__stringBase0@l /* 0x80610084@l */
/* 8060EA58  38 84 00 07 */	addi r4, r4, 7
/* 8060EA5C  4B A1 E5 AD */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 8060EA60  38 7F 05 B4 */	addi r3, r31, 0x5b4
/* 8060EA64  3C 80 80 61 */	lis r4, d_a_b_mgn__stringBase0@ha /* 0x80610084@ha */
/* 8060EA68  38 84 00 84 */	addi r4, r4, d_a_b_mgn__stringBase0@l /* 0x80610084@l */
/* 8060EA6C  4B A1 E5 9D */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 8060EA70  88 1F 26 C8 */	lbz r0, 0x26c8(r31)
/* 8060EA74  28 00 00 00 */	cmplwi r0, 0
/* 8060EA78  41 82 00 10 */	beq lbl_8060EA88
/* 8060EA7C  38 00 00 00 */	li r0, 0
/* 8060EA80  3C 60 80 61 */	lis r3, data_80610440@ha /* 0x80610440@ha */
/* 8060EA84  98 03 04 40 */	stb r0, data_80610440@l(r3)  /* 0x80610440@l */
lbl_8060EA88:
/* 8060EA88  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 8060EA8C  28 00 00 00 */	cmplwi r0, 0
/* 8060EA90  41 82 00 18 */	beq lbl_8060EAA8
/* 8060EA94  38 7F 09 E0 */	addi r3, r31, 0x9e0
/* 8060EA98  81 9F 09 E0 */	lwz r12, 0x9e0(r31)
/* 8060EA9C  81 8C 00 08 */	lwz r12, 8(r12)
/* 8060EAA0  7D 89 03 A6 */	mtctr r12
/* 8060EAA4  4E 80 04 21 */	bctrl 
lbl_8060EAA8:
/* 8060EAA8  38 60 00 01 */	li r3, 1
/* 8060EAAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8060EAB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8060EAB4  7C 08 03 A6 */	mtlr r0
/* 8060EAB8  38 21 00 10 */	addi r1, r1, 0x10
/* 8060EABC  4E 80 00 20 */	blr 
