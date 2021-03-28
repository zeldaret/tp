lbl_80D3D508:
/* 80D3D508  3C 80 80 D4 */	lis r4, lit_4312@ha
/* 80D3D50C  C0 04 DC F8 */	lfs f0, lit_4312@l(r4)
/* 80D3D510  D0 03 09 C4 */	stfs f0, 0x9c4(r3)
/* 80D3D514  D0 03 09 C8 */	stfs f0, 0x9c8(r3)
/* 80D3D518  D0 03 09 CC */	stfs f0, 0x9cc(r3)
/* 80D3D51C  D0 03 09 D0 */	stfs f0, 0x9d0(r3)
/* 80D3D520  D0 03 09 D4 */	stfs f0, 0x9d4(r3)
/* 80D3D524  D0 03 09 D8 */	stfs f0, 0x9d8(r3)
/* 80D3D528  38 A0 00 00 */	li r5, 0
/* 80D3D52C  B0 A3 09 DC */	sth r5, 0x9dc(r3)
/* 80D3D530  B0 A3 09 DE */	sth r5, 0x9de(r3)
/* 80D3D534  B0 A3 09 E0 */	sth r5, 0x9e0(r3)
/* 80D3D538  90 A3 09 E4 */	stw r5, 0x9e4(r3)
/* 80D3D53C  90 A3 09 E8 */	stw r5, 0x9e8(r3)
/* 80D3D540  D0 03 09 EC */	stfs f0, 0x9ec(r3)
/* 80D3D544  D0 03 09 F0 */	stfs f0, 0x9f0(r3)
/* 80D3D548  D0 03 09 F4 */	stfs f0, 0x9f4(r3)
/* 80D3D54C  D0 03 09 F8 */	stfs f0, 0x9f8(r3)
/* 80D3D550  D0 03 09 FC */	stfs f0, 0x9fc(r3)
/* 80D3D554  B0 A3 0A 00 */	sth r5, 0xa00(r3)
/* 80D3D558  B0 A3 0A 02 */	sth r5, 0xa02(r3)
/* 80D3D55C  B0 A3 0A 04 */	sth r5, 0xa04(r3)
/* 80D3D560  B0 A3 0A 06 */	sth r5, 0xa06(r3)
/* 80D3D564  B0 A3 0A 08 */	sth r5, 0xa08(r3)
/* 80D3D568  90 A3 0A 0C */	stw r5, 0xa0c(r3)
/* 80D3D56C  38 80 FF FF */	li r4, -1
/* 80D3D570  90 83 0A 10 */	stw r4, 0xa10(r3)
/* 80D3D574  90 83 0A 14 */	stw r4, 0xa14(r3)
/* 80D3D578  38 00 00 04 */	li r0, 4
/* 80D3D57C  7C 09 03 A6 */	mtctr r0
lbl_80D3D580:
/* 80D3D580  38 05 0A 18 */	addi r0, r5, 0xa18
/* 80D3D584  7C 83 01 2E */	stwx r4, r3, r0
/* 80D3D588  38 A5 00 04 */	addi r5, r5, 4
/* 80D3D58C  42 00 FF F4 */	bdnz lbl_80D3D580
/* 80D3D590  38 80 00 00 */	li r4, 0
/* 80D3D594  38 A0 FF FF */	li r5, -1
/* 80D3D598  38 00 00 02 */	li r0, 2
/* 80D3D59C  7C 09 03 A6 */	mtctr r0
lbl_80D3D5A0:
/* 80D3D5A0  38 04 0A 28 */	addi r0, r4, 0xa28
/* 80D3D5A4  7C A3 01 2E */	stwx r5, r3, r0
/* 80D3D5A8  38 84 00 04 */	addi r4, r4, 4
/* 80D3D5AC  42 00 FF F4 */	bdnz lbl_80D3D5A0
/* 80D3D5B0  38 00 00 00 */	li r0, 0
/* 80D3D5B4  98 03 0A 31 */	stb r0, 0xa31(r3)
/* 80D3D5B8  98 03 0A 32 */	stb r0, 0xa32(r3)
/* 80D3D5BC  98 03 0A 33 */	stb r0, 0xa33(r3)
/* 80D3D5C0  98 03 0A 34 */	stb r0, 0xa34(r3)
/* 80D3D5C4  4E 80 00 20 */	blr 
