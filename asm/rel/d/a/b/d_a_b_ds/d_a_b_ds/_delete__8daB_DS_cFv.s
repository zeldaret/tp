lbl_805DB1AC:
/* 805DB1AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805DB1B0  7C 08 02 A6 */	mflr r0
/* 805DB1B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805DB1B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805DB1BC  7C 7F 1B 78 */	mr r31, r3
/* 805DB1C0  38 7F 05 AC */	addi r3, r31, 0x5ac
/* 805DB1C4  3C 80 80 5E */	lis r4, d_a_b_ds__stringBase0@ha /* 0x805DD22C@ha */
/* 805DB1C8  38 84 D2 2C */	addi r4, r4, d_a_b_ds__stringBase0@l /* 0x805DD22C@l */
/* 805DB1CC  4B A5 1E 3D */	bl dComIfG_resDelete__FP30request_of_phase_process_classPCc
/* 805DB1D0  88 1F 08 56 */	lbz r0, 0x856(r31)
/* 805DB1D4  28 00 00 01 */	cmplwi r0, 1
/* 805DB1D8  41 82 00 14 */	beq lbl_805DB1EC
/* 805DB1DC  28 00 00 03 */	cmplwi r0, 3
/* 805DB1E0  41 82 00 0C */	beq lbl_805DB1EC
/* 805DB1E4  28 00 00 04 */	cmplwi r0, 4
/* 805DB1E8  40 82 00 0C */	bne lbl_805DB1F4
lbl_805DB1EC:
/* 805DB1EC  38 60 00 01 */	li r3, 1
/* 805DB1F0  48 00 00 40 */	b lbl_805DB230
lbl_805DB1F4:
/* 805DB1F4  88 1F 2E C8 */	lbz r0, 0x2ec8(r31)
/* 805DB1F8  28 00 00 00 */	cmplwi r0, 0
/* 805DB1FC  41 82 00 10 */	beq lbl_805DB20C
/* 805DB200  38 00 00 00 */	li r0, 0
/* 805DB204  3C 60 80 5E */	lis r3, struct_805DDAAC+0x1@ha /* 0x805DDAAD@ha */
/* 805DB208  98 03 DA AD */	stb r0, struct_805DDAAC+0x1@l(r3)  /* 0x805DDAAD@l */
lbl_805DB20C:
/* 805DB20C  80 1F 00 F0 */	lwz r0, 0xf0(r31)
/* 805DB210  28 00 00 00 */	cmplwi r0, 0
/* 805DB214  41 82 00 18 */	beq lbl_805DB22C
/* 805DB218  38 7F 05 DC */	addi r3, r31, 0x5dc
/* 805DB21C  81 9F 05 DC */	lwz r12, 0x5dc(r31)
/* 805DB220  81 8C 00 08 */	lwz r12, 8(r12)
/* 805DB224  7D 89 03 A6 */	mtctr r12
/* 805DB228  4E 80 04 21 */	bctrl 
lbl_805DB22C:
/* 805DB22C  38 60 00 01 */	li r3, 1
lbl_805DB230:
/* 805DB230  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805DB234  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805DB238  7C 08 03 A6 */	mtlr r0
/* 805DB23C  38 21 00 10 */	addi r1, r1, 0x10
/* 805DB240  4E 80 00 20 */	blr 
