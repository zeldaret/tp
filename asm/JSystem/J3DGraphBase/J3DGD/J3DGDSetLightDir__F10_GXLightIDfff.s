lbl_8030D938:
/* 8030D938  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8030D93C  7C 60 00 34 */	cntlzw r0, r3
/* 8030D940  20 00 00 1F */	subfic r0, r0, 0x1f
/* 8030D944  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8030D948  28 00 00 07 */	cmplwi r0, 7
/* 8030D94C  40 81 00 08 */	ble lbl_8030D954
/* 8030D950  38 00 00 00 */	li r0, 0
lbl_8030D954:
/* 8030D954  54 03 24 36 */	rlwinm r3, r0, 4, 0x10, 0x1b
/* 8030D958  38 C3 06 0D */	addi r6, r3, 0x60d
/* 8030D95C  38 A0 00 10 */	li r5, 0x10
/* 8030D960  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8030D964  80 64 00 08 */	lwz r3, 8(r4)
/* 8030D968  38 03 00 01 */	addi r0, r3, 1
/* 8030D96C  90 04 00 08 */	stw r0, 8(r4)
/* 8030D970  98 A3 00 00 */	stb r5, 0(r3)
/* 8030D974  38 A0 00 00 */	li r5, 0
/* 8030D978  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8030D97C  80 64 00 08 */	lwz r3, 8(r4)
/* 8030D980  38 03 00 01 */	addi r0, r3, 1
/* 8030D984  90 04 00 08 */	stw r0, 8(r4)
/* 8030D988  98 A3 00 00 */	stb r5, 0(r3)
/* 8030D98C  38 A0 00 02 */	li r5, 2
/* 8030D990  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8030D994  80 64 00 08 */	lwz r3, 8(r4)
/* 8030D998  38 03 00 01 */	addi r0, r3, 1
/* 8030D99C  90 04 00 08 */	stw r0, 8(r4)
/* 8030D9A0  98 A3 00 00 */	stb r5, 0(r3)
/* 8030D9A4  54 C5 C6 3E */	rlwinm r5, r6, 0x18, 0x18, 0x1f
/* 8030D9A8  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8030D9AC  80 64 00 08 */	lwz r3, 8(r4)
/* 8030D9B0  38 03 00 01 */	addi r0, r3, 1
/* 8030D9B4  90 04 00 08 */	stw r0, 8(r4)
/* 8030D9B8  98 A3 00 00 */	stb r5, 0(r3)
/* 8030D9BC  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8030D9C0  80 64 00 08 */	lwz r3, 8(r4)
/* 8030D9C4  38 03 00 01 */	addi r0, r3, 1
/* 8030D9C8  90 04 00 08 */	stw r0, 8(r4)
/* 8030D9CC  98 C3 00 00 */	stb r6, 0(r3)
/* 8030D9D0  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8030D9D4  80 C1 00 10 */	lwz r6, 0x10(r1)
/* 8030D9D8  54 C5 46 3E */	srwi r5, r6, 0x18
/* 8030D9DC  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8030D9E0  80 64 00 08 */	lwz r3, 8(r4)
/* 8030D9E4  38 03 00 01 */	addi r0, r3, 1
/* 8030D9E8  90 04 00 08 */	stw r0, 8(r4)
/* 8030D9EC  98 A3 00 00 */	stb r5, 0(r3)
/* 8030D9F0  54 C5 86 3E */	rlwinm r5, r6, 0x10, 0x18, 0x1f
/* 8030D9F4  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8030D9F8  80 64 00 08 */	lwz r3, 8(r4)
/* 8030D9FC  38 03 00 01 */	addi r0, r3, 1
/* 8030DA00  90 04 00 08 */	stw r0, 8(r4)
/* 8030DA04  98 A3 00 00 */	stb r5, 0(r3)
/* 8030DA08  54 C5 C6 3E */	rlwinm r5, r6, 0x18, 0x18, 0x1f
/* 8030DA0C  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8030DA10  80 64 00 08 */	lwz r3, 8(r4)
/* 8030DA14  38 03 00 01 */	addi r0, r3, 1
/* 8030DA18  90 04 00 08 */	stw r0, 8(r4)
/* 8030DA1C  98 A3 00 00 */	stb r5, 0(r3)
/* 8030DA20  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8030DA24  80 64 00 08 */	lwz r3, 8(r4)
/* 8030DA28  38 03 00 01 */	addi r0, r3, 1
/* 8030DA2C  90 04 00 08 */	stw r0, 8(r4)
/* 8030DA30  98 C3 00 00 */	stb r6, 0(r3)
/* 8030DA34  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 8030DA38  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 8030DA3C  54 C5 46 3E */	srwi r5, r6, 0x18
/* 8030DA40  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8030DA44  80 64 00 08 */	lwz r3, 8(r4)
/* 8030DA48  38 03 00 01 */	addi r0, r3, 1
/* 8030DA4C  90 04 00 08 */	stw r0, 8(r4)
/* 8030DA50  98 A3 00 00 */	stb r5, 0(r3)
/* 8030DA54  54 C5 86 3E */	rlwinm r5, r6, 0x10, 0x18, 0x1f
/* 8030DA58  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8030DA5C  80 64 00 08 */	lwz r3, 8(r4)
/* 8030DA60  38 03 00 01 */	addi r0, r3, 1
/* 8030DA64  90 04 00 08 */	stw r0, 8(r4)
/* 8030DA68  98 A3 00 00 */	stb r5, 0(r3)
/* 8030DA6C  54 C5 C6 3E */	rlwinm r5, r6, 0x18, 0x18, 0x1f
/* 8030DA70  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8030DA74  80 64 00 08 */	lwz r3, 8(r4)
/* 8030DA78  38 03 00 01 */	addi r0, r3, 1
/* 8030DA7C  90 04 00 08 */	stw r0, 8(r4)
/* 8030DA80  98 A3 00 00 */	stb r5, 0(r3)
/* 8030DA84  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8030DA88  80 64 00 08 */	lwz r3, 8(r4)
/* 8030DA8C  38 03 00 01 */	addi r0, r3, 1
/* 8030DA90  90 04 00 08 */	stw r0, 8(r4)
/* 8030DA94  98 C3 00 00 */	stb r6, 0(r3)
/* 8030DA98  D0 61 00 08 */	stfs f3, 8(r1)
/* 8030DA9C  80 C1 00 08 */	lwz r6, 8(r1)
/* 8030DAA0  54 C5 46 3E */	srwi r5, r6, 0x18
/* 8030DAA4  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8030DAA8  80 64 00 08 */	lwz r3, 8(r4)
/* 8030DAAC  38 03 00 01 */	addi r0, r3, 1
/* 8030DAB0  90 04 00 08 */	stw r0, 8(r4)
/* 8030DAB4  98 A3 00 00 */	stb r5, 0(r3)
/* 8030DAB8  54 C5 86 3E */	rlwinm r5, r6, 0x10, 0x18, 0x1f
/* 8030DABC  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8030DAC0  80 64 00 08 */	lwz r3, 8(r4)
/* 8030DAC4  38 03 00 01 */	addi r0, r3, 1
/* 8030DAC8  90 04 00 08 */	stw r0, 8(r4)
/* 8030DACC  98 A3 00 00 */	stb r5, 0(r3)
/* 8030DAD0  54 C5 C6 3E */	rlwinm r5, r6, 0x18, 0x18, 0x1f
/* 8030DAD4  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8030DAD8  80 64 00 08 */	lwz r3, 8(r4)
/* 8030DADC  38 03 00 01 */	addi r0, r3, 1
/* 8030DAE0  90 04 00 08 */	stw r0, 8(r4)
/* 8030DAE4  98 A3 00 00 */	stb r5, 0(r3)
/* 8030DAE8  80 8D 94 00 */	lwz r4, __GDCurrentDL(r13)
/* 8030DAEC  80 64 00 08 */	lwz r3, 8(r4)
/* 8030DAF0  38 03 00 01 */	addi r0, r3, 1
/* 8030DAF4  90 04 00 08 */	stw r0, 8(r4)
/* 8030DAF8  98 C3 00 00 */	stb r6, 0(r3)
/* 8030DAFC  38 21 00 20 */	addi r1, r1, 0x20
/* 8030DB00  4E 80 00 20 */	blr 
