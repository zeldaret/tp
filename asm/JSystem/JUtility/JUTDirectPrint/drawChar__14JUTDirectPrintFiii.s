lbl_802E431C:
/* 802E431C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802E4320  7C 08 02 A6 */	mflr r0
/* 802E4324  90 01 00 24 */	stw r0, 0x24(r1)
/* 802E4328  39 61 00 20 */	addi r11, r1, 0x20
/* 802E432C  48 07 DE A9 */	bl _savegpr_27
/* 802E4330  3C E0 80 3D */	lis r7, sAsciiTable__14JUTDirectPrint@ha /* 0x803CC6B8@ha */
/* 802E4334  38 E7 C6 B8 */	addi r7, r7, sAsciiTable__14JUTDirectPrint@l /* 0x803CC6B8@l */
/* 802E4338  2C 06 00 64 */	cmpwi r6, 0x64
/* 802E433C  7C C8 33 78 */	mr r8, r6
/* 802E4340  41 80 00 08 */	blt lbl_802E4348
/* 802E4344  39 06 FF 9C */	addi r8, r6, -100
lbl_802E4348:
/* 802E4348  38 00 00 05 */	li r0, 5
/* 802E434C  7D 28 03 D6 */	divw r9, r8, r0
/* 802E4350  7C 09 01 D6 */	mullw r0, r9, r0
/* 802E4354  7C 00 40 50 */	subf r0, r0, r8
/* 802E4358  1D 00 00 06 */	mulli r8, r0, 6
/* 802E435C  1C 09 00 07 */	mulli r0, r9, 7
/* 802E4360  2C 06 00 64 */	cmpwi r6, 0x64
/* 802E4364  54 00 10 3A */	slwi r0, r0, 2
/* 802E4368  38 C7 01 80 */	addi r6, r7, 0x180
/* 802E436C  7C C6 02 14 */	add r6, r6, r0
/* 802E4370  40 80 00 0C */	bge lbl_802E437C
/* 802E4374  38 C7 00 80 */	addi r6, r7, 0x80
/* 802E4378  7C C6 02 14 */	add r6, r6, r0
lbl_802E437C:
/* 802E437C  7C C9 33 78 */	mr r9, r6
/* 802E4380  A0 C3 00 04 */	lhz r6, 4(r3)
/* 802E4384  38 00 01 90 */	li r0, 0x190
/* 802E4388  7C 00 30 10 */	subfc r0, r0, r6
/* 802E438C  7C C0 01 10 */	subfe r6, r0, r0
/* 802E4390  38 C6 00 02 */	addi r6, r6, 2
/* 802E4394  A1 43 00 06 */	lhz r10, 6(r3)
/* 802E4398  38 00 01 2C */	li r0, 0x12c
/* 802E439C  7C 00 50 10 */	subfc r0, r0, r10
/* 802E43A0  7D 40 01 10 */	subfe r10, r0, r0
/* 802E43A4  38 0A 00 02 */	addi r0, r10, 2
/* 802E43A8  81 63 00 14 */	lwz r11, 0x14(r3)
/* 802E43AC  A1 43 00 08 */	lhz r10, 8(r3)
/* 802E43B0  7C AA 29 D6 */	mullw r5, r10, r5
/* 802E43B4  7C A0 29 D6 */	mullw r5, r0, r5
/* 802E43B8  54 A5 08 3C */	slwi r5, r5, 1
/* 802E43BC  7C 84 31 D6 */	mullw r4, r4, r6
/* 802E43C0  54 84 08 3C */	slwi r4, r4, 1
/* 802E43C4  7D 45 22 14 */	add r10, r5, r4
/* 802E43C8  7D 4B 52 14 */	add r10, r11, r10
/* 802E43CC  39 60 00 00 */	li r11, 0
/* 802E43D0  1C 86 00 06 */	mulli r4, r6, 6
lbl_802E43D4:
/* 802E43D4  80 A9 00 00 */	lwz r5, 0(r9)
/* 802E43D8  7C BB 40 30 */	slw r27, r5, r8
/* 802E43DC  2C 06 00 01 */	cmpwi r6, 1
/* 802E43E0  39 29 00 04 */	addi r9, r9, 4
/* 802E43E4  40 82 00 0C */	bne lbl_802E43F0
/* 802E43E8  57 65 F8 4C */	rlwinm r5, r27, 0x1f, 1, 6
/* 802E43EC  48 00 00 34 */	b lbl_802E4420
lbl_802E43F0:
/* 802E43F0  57 65 27 3A */	rlwinm r5, r27, 4, 0x1c, 0x1d
/* 802E43F4  3B C7 02 B4 */	addi r30, r7, 0x2b4
/* 802E43F8  7C BE 28 2E */	lwzx r5, r30, r5
/* 802E43FC  54 BF 40 2E */	slwi r31, r5, 8
/* 802E4400  57 65 47 3A */	rlwinm r5, r27, 8, 0x1c, 0x1d
/* 802E4404  7D 9E 28 2E */	lwzx r12, r30, r5
/* 802E4408  57 65 37 3A */	rlwinm r5, r27, 6, 0x1c, 0x1d
/* 802E440C  7C BE 28 2E */	lwzx r5, r30, r5
/* 802E4410  54 A5 20 36 */	slwi r5, r5, 4
/* 802E4414  7D 85 2B 78 */	or r5, r12, r5
/* 802E4418  7F E5 2B 78 */	or r5, r31, r5
/* 802E441C  54 A5 98 18 */	slwi r5, r5, 0x13
lbl_802E4420:
/* 802E4420  39 84 00 01 */	addi r12, r4, 1
/* 802E4424  55 8C F8 7E */	srwi r12, r12, 1
/* 802E4428  7D 89 03 A6 */	mtctr r12
/* 802E442C  2C 04 00 00 */	cmpwi r4, 0
/* 802E4430  40 81 01 04 */	ble lbl_802E4534
lbl_802E4434:
/* 802E4434  54 BC 00 43 */	rlwinm. r28, r5, 0, 1, 1
/* 802E4438  41 82 00 0C */	beq lbl_802E4444
/* 802E443C  A3 C3 00 20 */	lhz r30, 0x20(r3)
/* 802E4440  48 00 00 08 */	b lbl_802E4448
lbl_802E4444:
/* 802E4444  3B C0 00 40 */	li r30, 0x40
lbl_802E4448:
/* 802E4448  54 AC 00 01 */	rlwinm. r12, r5, 0, 0, 0
/* 802E444C  41 82 00 0C */	beq lbl_802E4458
/* 802E4450  A3 A3 00 22 */	lhz r29, 0x22(r3)
/* 802E4454  48 00 00 08 */	b lbl_802E445C
lbl_802E4458:
/* 802E4458  3B A0 00 20 */	li r29, 0x20
lbl_802E445C:
/* 802E445C  54 BB 00 85 */	rlwinm. r27, r5, 0, 2, 2
/* 802E4460  41 82 00 0C */	beq lbl_802E446C
/* 802E4464  A1 83 00 22 */	lhz r12, 0x22(r3)
/* 802E4468  48 00 00 08 */	b lbl_802E4470
lbl_802E446C:
/* 802E446C  39 80 00 20 */	li r12, 0x20
lbl_802E4470:
/* 802E4470  28 1C 00 00 */	cmplwi r28, 0
/* 802E4474  41 82 00 0C */	beq lbl_802E4480
/* 802E4478  A3 E3 00 1C */	lhz r31, 0x1c(r3)
/* 802E447C  48 00 00 08 */	b lbl_802E4484
lbl_802E4480:
/* 802E4480  3B E0 00 00 */	li r31, 0
lbl_802E4484:
/* 802E4484  7D 9E 62 14 */	add r12, r30, r12
/* 802E4488  7D 9D 62 14 */	add r12, r29, r12
/* 802E448C  7F EC 63 78 */	or r12, r31, r12
/* 802E4490  55 9D 04 3E */	clrlwi r29, r12, 0x10
/* 802E4494  B1 8A 00 00 */	sth r12, 0(r10)
/* 802E4498  2C 00 00 01 */	cmpwi r0, 1
/* 802E449C  40 81 00 10 */	ble lbl_802E44AC
/* 802E44A0  A1 83 00 08 */	lhz r12, 8(r3)
/* 802E44A4  55 8C 08 3C */	slwi r12, r12, 1
/* 802E44A8  7F AA 63 2E */	sthx r29, r10, r12
lbl_802E44AC:
/* 802E44AC  28 1B 00 00 */	cmplwi r27, 0
/* 802E44B0  41 82 00 0C */	beq lbl_802E44BC
/* 802E44B4  A3 A3 00 26 */	lhz r29, 0x26(r3)
/* 802E44B8  48 00 00 08 */	b lbl_802E44C0
lbl_802E44BC:
/* 802E44BC  3B A0 00 40 */	li r29, 0x40
lbl_802E44C0:
/* 802E44C0  28 1C 00 00 */	cmplwi r28, 0
/* 802E44C4  41 82 00 0C */	beq lbl_802E44D0
/* 802E44C8  A3 C3 00 28 */	lhz r30, 0x28(r3)
/* 802E44CC  48 00 00 08 */	b lbl_802E44D4
lbl_802E44D0:
/* 802E44D0  3B C0 00 20 */	li r30, 0x20
lbl_802E44D4:
/* 802E44D4  54 AC 00 C7 */	rlwinm. r12, r5, 0, 3, 3
/* 802E44D8  41 82 00 0C */	beq lbl_802E44E4
/* 802E44DC  A1 83 00 28 */	lhz r12, 0x28(r3)
/* 802E44E0  48 00 00 08 */	b lbl_802E44E8
lbl_802E44E4:
/* 802E44E4  39 80 00 20 */	li r12, 0x20
lbl_802E44E8:
/* 802E44E8  28 1B 00 00 */	cmplwi r27, 0
/* 802E44EC  41 82 00 0C */	beq lbl_802E44F8
/* 802E44F0  A3 E3 00 1C */	lhz r31, 0x1c(r3)
/* 802E44F4  48 00 00 08 */	b lbl_802E44FC
lbl_802E44F8:
/* 802E44F8  3B E0 00 00 */	li r31, 0
lbl_802E44FC:
/* 802E44FC  7D 9D 62 14 */	add r12, r29, r12
/* 802E4500  7D 9E 62 14 */	add r12, r30, r12
/* 802E4504  7F EC 63 78 */	or r12, r31, r12
/* 802E4508  55 9B 04 3E */	clrlwi r27, r12, 0x10
/* 802E450C  B1 8A 00 02 */	sth r12, 2(r10)
/* 802E4510  2C 00 00 01 */	cmpwi r0, 1
/* 802E4514  40 81 00 14 */	ble lbl_802E4528
/* 802E4518  A1 83 00 08 */	lhz r12, 8(r3)
/* 802E451C  55 8C 08 3C */	slwi r12, r12, 1
/* 802E4520  39 8C 00 02 */	addi r12, r12, 2
/* 802E4524  7F 6A 63 2E */	sthx r27, r10, r12
lbl_802E4528:
/* 802E4528  54 A5 10 3A */	slwi r5, r5, 2
/* 802E452C  39 4A 00 04 */	addi r10, r10, 4
/* 802E4530  42 00 FF 04 */	bdnz lbl_802E4434
lbl_802E4534:
/* 802E4534  A0 A3 00 08 */	lhz r5, 8(r3)
/* 802E4538  7C A5 01 D6 */	mullw r5, r5, r0
/* 802E453C  7C A4 28 50 */	subf r5, r4, r5
/* 802E4540  54 A5 08 3C */	slwi r5, r5, 1
/* 802E4544  7D 4A 2A 14 */	add r10, r10, r5
/* 802E4548  39 6B 00 01 */	addi r11, r11, 1
/* 802E454C  2C 0B 00 07 */	cmpwi r11, 7
/* 802E4550  41 80 FE 84 */	blt lbl_802E43D4
/* 802E4554  39 61 00 20 */	addi r11, r1, 0x20
/* 802E4558  48 07 DC C9 */	bl _restgpr_27
/* 802E455C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802E4560  7C 08 03 A6 */	mtlr r0
/* 802E4564  38 21 00 20 */	addi r1, r1, 0x20
/* 802E4568  4E 80 00 20 */	blr 
