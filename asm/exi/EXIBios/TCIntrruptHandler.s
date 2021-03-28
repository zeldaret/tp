lbl_80343B6C:
/* 80343B6C  7C 08 02 A6 */	mflr r0
/* 80343B70  90 01 00 04 */	stw r0, 4(r1)
/* 80343B74  94 21 FD 08 */	stwu r1, -0x2f8(r1)
/* 80343B78  93 E1 02 F4 */	stw r31, 0x2f4(r1)
/* 80343B7C  93 C1 02 F0 */	stw r30, 0x2f0(r1)
/* 80343B80  93 A1 02 EC */	stw r29, 0x2ec(r1)
/* 80343B84  93 81 02 E8 */	stw r28, 0x2e8(r1)
/* 80343B88  3B 84 00 00 */	addi r28, r4, 0
/* 80343B8C  7C 65 07 34 */	extsh r5, r3
/* 80343B90  38 05 FF F6 */	addi r0, r5, -10
/* 80343B94  3C 60 55 55 */	lis r3, 0x5555 /* 0x55555556@ha */
/* 80343B98  38 63 55 56 */	addi r3, r3, 0x5556 /* 0x55555556@l */
/* 80343B9C  7C 63 00 96 */	mulhw r3, r3, r0
/* 80343BA0  54 60 0F FE */	srwi r0, r3, 0x1f
/* 80343BA4  7F C3 02 14 */	add r30, r3, r0
/* 80343BA8  57 C4 30 32 */	slwi r4, r30, 6
/* 80343BAC  3C 60 80 45 */	lis r3, Ecb@ha
/* 80343BB0  38 03 C5 70 */	addi r0, r3, Ecb@l
/* 80343BB4  7F E0 22 14 */	add r31, r0, r4
/* 80343BB8  3C 00 80 00 */	lis r0, 0x8000
/* 80343BBC  7C 03 2C 30 */	srw r3, r0, r5
/* 80343BC0  4B FF 9E FD */	bl __OSMaskInterrupts
/* 80343BC4  1C FE 00 14 */	mulli r7, r30, 0x14
/* 80343BC8  3C C0 CC 00 */	lis r6, 0xCC00 /* 0xCC006800@ha */
/* 80343BCC  38 66 68 00 */	addi r3, r6, 0x6800 /* 0xCC006800@l */
/* 80343BD0  7C 63 3A 14 */	add r3, r3, r7
/* 80343BD4  80 03 00 00 */	lwz r0, 0(r3)
/* 80343BD8  70 00 07 F5 */	andi. r0, r0, 0x7f5
/* 80343BDC  60 00 00 08 */	ori r0, r0, 8
/* 80343BE0  90 03 00 00 */	stw r0, 0(r3)
/* 80343BE4  80 1F 00 04 */	lwz r0, 4(r31)
/* 80343BE8  7C 1D 03 78 */	mr r29, r0
/* 80343BEC  28 00 00 00 */	cmplwi r0, 0
/* 80343BF0  41 82 01 74 */	beq lbl_80343D64
/* 80343BF4  38 80 00 00 */	li r4, 0
/* 80343BF8  90 9F 00 04 */	stw r4, 4(r31)
/* 80343BFC  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80343C00  54 00 07 BF */	clrlwi. r0, r0, 0x1e
/* 80343C04  41 82 01 2C */	beq lbl_80343D30
/* 80343C08  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80343C0C  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 80343C10  41 82 01 14 */	beq lbl_80343D24
/* 80343C14  80 7F 00 10 */	lwz r3, 0x10(r31)
/* 80343C18  2C 03 00 00 */	cmpwi r3, 0
/* 80343C1C  41 82 01 08 */	beq lbl_80343D24
/* 80343C20  80 BF 00 14 */	lwz r5, 0x14(r31)
/* 80343C24  38 06 68 00 */	addi r0, r6, 0x6800
/* 80343C28  7C C0 3A 14 */	add r6, r0, r7
/* 80343C2C  80 06 00 10 */	lwz r0, 0x10(r6)
/* 80343C30  40 81 00 F4 */	ble lbl_80343D24
/* 80343C34  38 E3 FF F8 */	addi r7, r3, -8
/* 80343C38  2C 03 00 08 */	cmpwi r3, 8
/* 80343C3C  40 81 00 BC */	ble lbl_80343CF8
/* 80343C40  38 C7 00 07 */	addi r6, r7, 7
/* 80343C44  54 C6 E8 FE */	srwi r6, r6, 3
/* 80343C48  7C C9 03 A6 */	mtctr r6
/* 80343C4C  2C 07 00 00 */	cmpwi r7, 0
/* 80343C50  40 81 00 A8 */	ble lbl_80343CF8
lbl_80343C54:
/* 80343C54  20 C4 00 03 */	subfic r6, r4, 3
/* 80343C58  54 C6 18 38 */	slwi r6, r6, 3
/* 80343C5C  7C 06 34 30 */	srw r6, r0, r6
/* 80343C60  98 C5 00 00 */	stb r6, 0(r5)
/* 80343C64  38 C4 00 01 */	addi r6, r4, 1
/* 80343C68  20 C6 00 03 */	subfic r6, r6, 3
/* 80343C6C  54 C6 18 38 */	slwi r6, r6, 3
/* 80343C70  7C 06 34 30 */	srw r6, r0, r6
/* 80343C74  98 C5 00 01 */	stb r6, 1(r5)
/* 80343C78  38 C4 00 02 */	addi r6, r4, 2
/* 80343C7C  20 C6 00 03 */	subfic r6, r6, 3
/* 80343C80  54 C6 18 38 */	slwi r6, r6, 3
/* 80343C84  7C 06 34 30 */	srw r6, r0, r6
/* 80343C88  98 C5 00 02 */	stb r6, 2(r5)
/* 80343C8C  7C C4 00 D0 */	neg r6, r4
/* 80343C90  54 C6 18 38 */	slwi r6, r6, 3
/* 80343C94  7C 06 34 30 */	srw r6, r0, r6
/* 80343C98  98 C5 00 03 */	stb r6, 3(r5)
/* 80343C9C  38 C4 00 04 */	addi r6, r4, 4
/* 80343CA0  20 C6 00 03 */	subfic r6, r6, 3
/* 80343CA4  54 C6 18 38 */	slwi r6, r6, 3
/* 80343CA8  7C 06 34 30 */	srw r6, r0, r6
/* 80343CAC  98 C5 00 04 */	stb r6, 4(r5)
/* 80343CB0  38 C4 00 05 */	addi r6, r4, 5
/* 80343CB4  20 C6 00 03 */	subfic r6, r6, 3
/* 80343CB8  54 C6 18 38 */	slwi r6, r6, 3
/* 80343CBC  7C 06 34 30 */	srw r6, r0, r6
/* 80343CC0  98 C5 00 05 */	stb r6, 5(r5)
/* 80343CC4  38 C4 00 06 */	addi r6, r4, 6
/* 80343CC8  20 C6 00 03 */	subfic r6, r6, 3
/* 80343CCC  54 C6 18 38 */	slwi r6, r6, 3
/* 80343CD0  7C 06 34 30 */	srw r6, r0, r6
/* 80343CD4  98 C5 00 06 */	stb r6, 6(r5)
/* 80343CD8  38 C4 00 07 */	addi r6, r4, 7
/* 80343CDC  20 C6 00 03 */	subfic r6, r6, 3
/* 80343CE0  54 C6 18 38 */	slwi r6, r6, 3
/* 80343CE4  7C 06 34 30 */	srw r6, r0, r6
/* 80343CE8  98 C5 00 07 */	stb r6, 7(r5)
/* 80343CEC  38 A5 00 08 */	addi r5, r5, 8
/* 80343CF0  38 84 00 08 */	addi r4, r4, 8
/* 80343CF4  42 00 FF 60 */	bdnz lbl_80343C54
lbl_80343CF8:
/* 80343CF8  7C C4 18 50 */	subf r6, r4, r3
/* 80343CFC  7C C9 03 A6 */	mtctr r6
/* 80343D00  7C 04 18 00 */	cmpw r4, r3
/* 80343D04  40 80 00 20 */	bge lbl_80343D24
lbl_80343D08:
/* 80343D08  20 64 00 03 */	subfic r3, r4, 3
/* 80343D0C  54 63 18 38 */	slwi r3, r3, 3
/* 80343D10  7C 03 1C 30 */	srw r3, r0, r3
/* 80343D14  98 65 00 00 */	stb r3, 0(r5)
/* 80343D18  38 A5 00 01 */	addi r5, r5, 1
/* 80343D1C  38 84 00 01 */	addi r4, r4, 1
/* 80343D20  42 00 FF E8 */	bdnz lbl_80343D08
lbl_80343D24:
/* 80343D24  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 80343D28  54 00 00 3A */	rlwinm r0, r0, 0, 0, 0x1d
/* 80343D2C  90 1F 00 0C */	stw r0, 0xc(r31)
lbl_80343D30:
/* 80343D30  38 61 00 20 */	addi r3, r1, 0x20
/* 80343D34  4B FF 82 CD */	bl OSClearContext
/* 80343D38  38 61 00 20 */	addi r3, r1, 0x20
/* 80343D3C  4B FF 80 FD */	bl OSSetCurrentContext
/* 80343D40  38 7E 00 00 */	addi r3, r30, 0
/* 80343D44  38 9C 00 00 */	addi r4, r28, 0
/* 80343D48  39 9D 00 00 */	addi r12, r29, 0
/* 80343D4C  7D 88 03 A6 */	mtlr r12
/* 80343D50  4E 80 00 21 */	blrl 
/* 80343D54  38 61 00 20 */	addi r3, r1, 0x20
/* 80343D58  4B FF 82 A9 */	bl OSClearContext
/* 80343D5C  7F 83 E3 78 */	mr r3, r28
/* 80343D60  4B FF 80 D9 */	bl OSSetCurrentContext
lbl_80343D64:
/* 80343D64  80 01 02 FC */	lwz r0, 0x2fc(r1)
/* 80343D68  83 E1 02 F4 */	lwz r31, 0x2f4(r1)
/* 80343D6C  83 C1 02 F0 */	lwz r30, 0x2f0(r1)
/* 80343D70  83 A1 02 EC */	lwz r29, 0x2ec(r1)
/* 80343D74  83 81 02 E8 */	lwz r28, 0x2e8(r1)
/* 80343D78  38 21 02 F8 */	addi r1, r1, 0x2f8
/* 80343D7C  7C 08 03 A6 */	mtlr r0
/* 80343D80  4E 80 00 20 */	blr 
