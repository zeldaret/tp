lbl_80C64668:
/* 80C64668  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80C6466C  7C 08 02 A6 */	mflr r0
/* 80C64670  90 01 00 74 */	stw r0, 0x74(r1)
/* 80C64674  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 80C64678  93 C1 00 68 */	stw r30, 0x68(r1)
/* 80C6467C  7C 7E 1B 78 */	mr r30, r3
/* 80C64680  3C 60 80 C6 */	lis r3, l_bmdidx@ha
/* 80C64684  3B E3 68 60 */	addi r31, r3, l_bmdidx@l
/* 80C64688  38 7E 05 A8 */	addi r3, r30, 0x5a8
/* 80C6468C  38 9F 00 70 */	addi r4, r31, 0x70
/* 80C64690  38 A1 00 50 */	addi r5, r1, 0x50
/* 80C64694  4B 6E 26 D8 */	b PSMTXMultVec
/* 80C64698  38 61 00 44 */	addi r3, r1, 0x44
/* 80C6469C  38 81 00 50 */	addi r4, r1, 0x50
/* 80C646A0  80 DE 06 1C */	lwz r6, 0x61c(r30)
/* 80C646A4  80 BE 06 10 */	lwz r5, 0x610(r30)
/* 80C646A8  38 05 FF FF */	addi r0, r5, -1
/* 80C646AC  1C A0 00 28 */	mulli r5, r0, 0x28
/* 80C646B0  38 A5 00 0C */	addi r5, r5, 0xc
/* 80C646B4  7C A6 2A 14 */	add r5, r6, r5
/* 80C646B8  4B 60 24 2C */	b __pl__4cXyzCFRC3Vec
/* 80C646BC  38 61 00 38 */	addi r3, r1, 0x38
/* 80C646C0  38 81 00 44 */	addi r4, r1, 0x44
/* 80C646C4  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 80C646C8  4B 60 24 BC */	b __ml__4cXyzCFf
/* 80C646CC  80 9E 06 1C */	lwz r4, 0x61c(r30)
/* 80C646D0  80 7E 06 10 */	lwz r3, 0x610(r30)
/* 80C646D4  38 03 FF FF */	addi r0, r3, -1
/* 80C646D8  1C 60 00 28 */	mulli r3, r0, 0x28
/* 80C646DC  38 63 00 0C */	addi r3, r3, 0xc
/* 80C646E0  7C 64 1A 14 */	add r3, r4, r3
/* 80C646E4  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80C646E8  D0 03 00 00 */	stfs f0, 0(r3)
/* 80C646EC  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80C646F0  D0 03 00 04 */	stfs f0, 4(r3)
/* 80C646F4  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80C646F8  D0 03 00 08 */	stfs f0, 8(r3)
/* 80C646FC  38 7E 05 A8 */	addi r3, r30, 0x5a8
/* 80C64700  38 9F 00 7C */	addi r4, r31, 0x7c
/* 80C64704  38 A1 00 50 */	addi r5, r1, 0x50
/* 80C64708  4B 6E 26 64 */	b PSMTXMultVec
/* 80C6470C  38 61 00 2C */	addi r3, r1, 0x2c
/* 80C64710  38 81 00 50 */	addi r4, r1, 0x50
/* 80C64714  80 DE 06 20 */	lwz r6, 0x620(r30)
/* 80C64718  80 BE 06 14 */	lwz r5, 0x614(r30)
/* 80C6471C  38 05 FF FF */	addi r0, r5, -1
/* 80C64720  1C A0 00 28 */	mulli r5, r0, 0x28
/* 80C64724  38 A5 00 0C */	addi r5, r5, 0xc
/* 80C64728  7C A6 2A 14 */	add r5, r6, r5
/* 80C6472C  4B 60 23 B8 */	b __pl__4cXyzCFRC3Vec
/* 80C64730  38 61 00 20 */	addi r3, r1, 0x20
/* 80C64734  38 81 00 2C */	addi r4, r1, 0x2c
/* 80C64738  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 80C6473C  4B 60 24 48 */	b __ml__4cXyzCFf
/* 80C64740  80 9E 06 20 */	lwz r4, 0x620(r30)
/* 80C64744  80 7E 06 14 */	lwz r3, 0x614(r30)
/* 80C64748  38 03 FF FF */	addi r0, r3, -1
/* 80C6474C  1C 60 00 28 */	mulli r3, r0, 0x28
/* 80C64750  38 63 00 0C */	addi r3, r3, 0xc
/* 80C64754  7C 64 1A 14 */	add r3, r4, r3
/* 80C64758  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80C6475C  D0 03 00 00 */	stfs f0, 0(r3)
/* 80C64760  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80C64764  D0 03 00 04 */	stfs f0, 4(r3)
/* 80C64768  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80C6476C  D0 03 00 08 */	stfs f0, 8(r3)
/* 80C64770  38 7E 05 A8 */	addi r3, r30, 0x5a8
/* 80C64774  38 9F 00 88 */	addi r4, r31, 0x88
/* 80C64778  38 A1 00 50 */	addi r5, r1, 0x50
/* 80C6477C  4B 6E 25 F0 */	b PSMTXMultVec
/* 80C64780  38 61 00 14 */	addi r3, r1, 0x14
/* 80C64784  38 81 00 50 */	addi r4, r1, 0x50
/* 80C64788  80 DE 06 24 */	lwz r6, 0x624(r30)
/* 80C6478C  80 BE 06 18 */	lwz r5, 0x618(r30)
/* 80C64790  38 05 FF FF */	addi r0, r5, -1
/* 80C64794  1C A0 00 28 */	mulli r5, r0, 0x28
/* 80C64798  38 A5 00 0C */	addi r5, r5, 0xc
/* 80C6479C  7C A6 2A 14 */	add r5, r6, r5
/* 80C647A0  4B 60 23 44 */	b __pl__4cXyzCFRC3Vec
/* 80C647A4  38 61 00 08 */	addi r3, r1, 8
/* 80C647A8  38 81 00 14 */	addi r4, r1, 0x14
/* 80C647AC  C0 3F 00 94 */	lfs f1, 0x94(r31)
/* 80C647B0  4B 60 23 D4 */	b __ml__4cXyzCFf
/* 80C647B4  80 9E 06 24 */	lwz r4, 0x624(r30)
/* 80C647B8  80 7E 06 18 */	lwz r3, 0x618(r30)
/* 80C647BC  38 03 FF FF */	addi r0, r3, -1
/* 80C647C0  1C 60 00 28 */	mulli r3, r0, 0x28
/* 80C647C4  38 63 00 0C */	addi r3, r3, 0xc
/* 80C647C8  7C 64 1A 14 */	add r3, r4, r3
/* 80C647CC  C0 01 00 08 */	lfs f0, 8(r1)
/* 80C647D0  D0 03 00 00 */	stfs f0, 0(r3)
/* 80C647D4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80C647D8  D0 03 00 04 */	stfs f0, 4(r3)
/* 80C647DC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80C647E0  D0 03 00 08 */	stfs f0, 8(r3)
/* 80C647E4  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 80C647E8  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 80C647EC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80C647F0  7C 08 03 A6 */	mtlr r0
/* 80C647F4  38 21 00 70 */	addi r1, r1, 0x70
/* 80C647F8  4E 80 00 20 */	blr 
