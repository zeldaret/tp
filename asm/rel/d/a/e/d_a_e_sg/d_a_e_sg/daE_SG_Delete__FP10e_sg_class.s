lbl_8078D5FC:
/* 8078D5FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8078D600  7C 08 02 A6 */	mflr r0
/* 8078D604  90 01 00 14 */	stw r0, 0x14(r1)
/* 8078D608  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8078D60C  7C 7F 1B 78 */	mr r31, r3
/* 8078D610  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 8078D614  3C 80 80 79 */	lis r4, stringBase0@ha
/* 8078D618  38 84 DE AC */	addi r4, r4, stringBase0@l
/* 8078D61C  4B 89 F9 EC */	b dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 8078D620  88 1F 0A AC */	lbz r0, 0xaac(r31)
/* 8078D624  28 00 00 00 */	cmplwi r0, 0
/* 8078D628  41 82 00 10 */	beq lbl_8078D638
/* 8078D62C  38 00 00 00 */	li r0, 0
/* 8078D630  3C 60 80 79 */	lis r3, struct_8078E0DC+0x1@ha
/* 8078D634  98 03 E0 DD */	stb r0, struct_8078E0DC+0x1@l(r3)
lbl_8078D638:
/* 8078D638  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 8078D63C  28 00 00 00 */	cmplwi r0, 0
/* 8078D640  41 82 00 18 */	beq lbl_8078D658
/* 8078D644  38 7F 05 BC */	addi r3, r31, 0x5bc
/* 8078D648  81 9F 05 BC */	lwz r12, 0x5bc(r31)
/* 8078D64C  81 8C 00 08 */	lwz r12, 8(r12)
/* 8078D650  7D 89 03 A6 */	mtctr r12
/* 8078D654  4E 80 04 21 */	bctrl 
lbl_8078D658:
/* 8078D658  88 DF 06 C4 */	lbz r6, 0x6c4(r31)
/* 8078D65C  7C C0 07 75 */	extsb. r0, r6
/* 8078D660  41 82 00 38 */	beq lbl_8078D698
/* 8078D664  3C 60 80 79 */	lis r3, stick_pt@ha
/* 8078D668  38 A3 E1 04 */	addi r5, r3, stick_pt@l
/* 8078D66C  80 85 00 00 */	lwz r4, 0(r5)
/* 8078D670  3C 60 80 79 */	lis r3, stick_bit@ha
/* 8078D674  38 63 DE B4 */	addi r3, r3, stick_bit@l
/* 8078D678  7C C0 07 74 */	extsb r0, r6
/* 8078D67C  54 00 10 3A */	slwi r0, r0, 2
/* 8078D680  7C 63 02 14 */	add r3, r3, r0
/* 8078D684  80 03 FF FC */	lwz r0, -4(r3)
/* 8078D688  7C 80 00 78 */	andc r0, r4, r0
/* 8078D68C  90 05 00 00 */	stw r0, 0(r5)
/* 8078D690  38 00 00 00 */	li r0, 0
/* 8078D694  98 1F 06 C4 */	stb r0, 0x6c4(r31)
lbl_8078D698:
/* 8078D698  38 60 00 01 */	li r3, 1
/* 8078D69C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8078D6A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8078D6A4  7C 08 03 A6 */	mtlr r0
/* 8078D6A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8078D6AC  4E 80 00 20 */	blr 
