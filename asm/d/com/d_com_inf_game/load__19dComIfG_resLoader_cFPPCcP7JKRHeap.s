lbl_8002F3B4:
/* 8002F3B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002F3B8  7C 08 02 A6 */	mflr r0
/* 8002F3BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002F3C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8002F3C4  7C 7F 1B 78 */	mr r31, r3
/* 8002F3C8  90 83 00 00 */	stw r4, 0(r3)
/* 8002F3CC  38 7F 00 04 */	addi r3, r31, 4
/* 8002F3D0  80 9F 00 00 */	lwz r4, 0(r31)
/* 8002F3D4  88 1F 00 0C */	lbz r0, 0xc(r31)
/* 8002F3D8  54 00 10 3A */	slwi r0, r0, 2
/* 8002F3DC  7C 84 00 2E */	lwzx r4, r4, r0
/* 8002F3E0  4B FF DB E1 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCcP7JKRHeap
/* 8002F3E4  2C 03 00 04 */	cmpwi r3, 4
/* 8002F3E8  40 82 00 38 */	bne lbl_8002F420
/* 8002F3EC  80 9F 00 00 */	lwz r4, 0(r31)
/* 8002F3F0  88 BF 00 0C */	lbz r5, 0xc(r31)
/* 8002F3F4  54 A0 10 3A */	slwi r0, r5, 2
/* 8002F3F8  7C 84 02 14 */	add r4, r4, r0
/* 8002F3FC  80 84 00 04 */	lwz r4, 4(r4)
/* 8002F400  88 04 00 00 */	lbz r0, 0(r4)
/* 8002F404  7C 00 07 75 */	extsb. r0, r0
/* 8002F408  41 82 00 18 */	beq lbl_8002F420
/* 8002F40C  38 05 00 01 */	addi r0, r5, 1
/* 8002F410  98 1F 00 0C */	stb r0, 0xc(r31)
/* 8002F414  38 00 00 00 */	li r0, 0
/* 8002F418  90 1F 00 08 */	stw r0, 8(r31)
/* 8002F41C  38 60 00 00 */	li r3, 0
lbl_8002F420:
/* 8002F420  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8002F424  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002F428  7C 08 03 A6 */	mtlr r0
/* 8002F42C  38 21 00 10 */	addi r1, r1, 0x10
/* 8002F430  4E 80 00 20 */	blr 
