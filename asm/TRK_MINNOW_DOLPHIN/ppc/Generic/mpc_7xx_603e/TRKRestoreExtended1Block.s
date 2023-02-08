lbl_803713A8:
/* 803713A8  3C 40 80 44 */	lis r2, gTRKCPUState@h /* 0x8044F338@h */
/* 803713AC  60 42 F3 38 */	ori r2, r2, gTRKCPUState@l /* 0x8044F338@l */
/* 803713B0  3C A0 80 3D */	lis r5, gTRKRestoreFlags@h /* 0x803D3238@h */
/* 803713B4  60 A5 32 38 */	ori r5, r5, gTRKRestoreFlags@l /* 0x803D3238@l */
/* 803713B8  88 65 00 00 */	lbz r3, 0(r5)
/* 803713BC  88 C5 00 01 */	lbz r6, 1(r5)
/* 803713C0  38 00 00 00 */	li r0, 0
/* 803713C4  98 05 00 00 */	stb r0, 0(r5)
/* 803713C8  98 05 00 01 */	stb r0, 1(r5)
/* 803713CC  2C 03 00 00 */	cmpwi r3, 0
/* 803713D0  41 82 00 14 */	beq lbl_803713E4
/* 803713D4  83 02 01 E8 */	lwz r24, 0x1e8(r2)
/* 803713D8  83 22 01 EC */	lwz r25, 0x1ec(r2)
/* 803713DC  7F 1C 43 A6 */	mttbl r24
/* 803713E0  7F 3D 43 A6 */	mttbu r25
lbl_803713E4:
/* 803713E4  BA 82 02 FC */	lmw r20, 0x2fc(r2)
/* 803713E8  7E 90 E3 A6 */	mtspr 0x390, r20
/* 803713EC  7E B1 E3 A6 */	mtspr 0x391, r21
/* 803713F0  7E D2 E3 A6 */	mtspr 0x392, r22
/* 803713F4  7E F3 E3 A6 */	mtspr 0x393, r23
/* 803713F8  7F 14 E3 A6 */	mtspr 0x394, r24
/* 803713FC  7F 35 E3 A6 */	mtspr 0x395, r25
/* 80371400  7F 56 E3 A6 */	mtspr 0x396, r26
/* 80371404  7F 77 E3 A6 */	mtspr 0x397, r27
/* 80371408  7F 98 E3 A6 */	mtspr 0x398, r28
/* 8037140C  7F DA E3 A6 */	mtspr 0x39a, r30
/* 80371410  7F FB E3 A6 */	mtspr 0x39b, r31
/* 80371414  48 00 00 1C */	b lbl_80371430
/* 80371418  BB 42 02 E0 */	lmw r26, 0x2e0(r2)
/* 8037141C  7F 50 EB A6 */	mtspr 0x3b0, r26
/* 80371420  7F 77 EB A6 */	mtspr 0x3b7, r27
/* 80371424  7F B6 FB A6 */	mtspr 0x3f6, r29
/* 80371428  7F D7 FB A6 */	mtspr 0x3f7, r30
/* 8037142C  7F FF FB A6 */	mtspr 0x3ff, r31
lbl_80371430:
/* 80371430  BA 62 02 84 */	lmw r19, 0x284(r2)
/* 80371434  7E 75 FB A6 */	mtspr 0x3f5, r19
/* 80371438  7E 99 EB A6 */	mtspr 0x3b9, r20
/* 8037143C  7E BA EB A6 */	mtspr 0x3ba, r21
/* 80371440  7E DD EB A6 */	mtspr 0x3bd, r22
/* 80371444  7E FE EB A6 */	mtspr 0x3be, r23
/* 80371448  7F 1B EB A6 */	mtspr 0x3bb, r24
/* 8037144C  7F 38 EB A6 */	mtspr 0x3b8, r25
/* 80371450  7F 5C EB A6 */	mtspr 0x3bc, r26
/* 80371454  7F 7C FB A6 */	mtspr 0x3fc, r27
/* 80371458  7F 9D FB A6 */	mtspr 0x3fd, r28
/* 8037145C  7F BE FB A6 */	mtspr 0x3fe, r29
/* 80371460  7F DB FB A6 */	mtspr 0x3FB, r30
/* 80371464  7F F9 FB A6 */	mtspr 0x3f9, r31
/* 80371468  48 00 00 34 */	b lbl_8037149C
/* 8037146C  2C 06 00 00 */	cmpwi r6, 0
/* 80371470  41 82 00 0C */	beq lbl_8037147C
/* 80371474  83 42 02 78 */	lwz r26, 0x278(r2)
/* 80371478  7F 56 03 A6 */	mtspr 0x16, r26
lbl_8037147C:
/* 8037147C  BB 22 02 40 */	lmw r25, 0x240(r2)
/* 80371480  7F 30 F3 A6 */	mtspr 0x3d0, r25
/* 80371484  7F 51 F3 A6 */	mtspr 0x3d1, r26
/* 80371488  7F 72 F3 A6 */	mtspr 0x3d2, r27
/* 8037148C  7F 93 F3 A6 */	mtspr 0x3d3, r28
/* 80371490  7F B4 F3 A6 */	mtspr 0x3D4, r29
/* 80371494  7F D5 F3 A6 */	mtspr 0x3D5, r30
/* 80371498  7F F6 F3 A6 */	mtspr 0x3d6, r31
lbl_8037149C:
/* 8037149C  BA 02 01 A8 */	lmw r16, 0x1a8(r2)
/* 803714A0  7E 00 01 A4 */	mtsr 0, r16
/* 803714A4  7E 21 01 A4 */	mtsr 1, r17
/* 803714A8  7E 42 01 A4 */	mtsr 2, r18
/* 803714AC  7E 63 01 A4 */	mtsr 3, r19
/* 803714B0  7E 84 01 A4 */	mtsr 4, r20
/* 803714B4  7E A5 01 A4 */	mtsr 5, r21
/* 803714B8  7E C6 01 A4 */	mtsr 6, r22
/* 803714BC  7E E7 01 A4 */	mtsr 7, r23
/* 803714C0  7F 08 01 A4 */	mtsr 8, r24
/* 803714C4  7F 29 01 A4 */	mtsr 9, r25
/* 803714C8  7F 4A 01 A4 */	mtsr 0xa, r26
/* 803714CC  7F 6B 01 A4 */	mtsr 0xb, r27
/* 803714D0  7F 8C 01 A4 */	mtsr 0xc, r28
/* 803714D4  7F AD 01 A4 */	mtsr 0xd, r29
/* 803714D8  7F CE 01 A4 */	mtsr 0xe, r30
/* 803714DC  7F EF 01 A4 */	mtsr 0xf, r31
/* 803714E0  B9 82 01 F0 */	lmw r12, 0x1f0(r2)
/* 803714E4  7D 90 FB A6 */	mtspr 0x3f0, r12
/* 803714E8  7D B1 FB A6 */	mtspr 0x3f1, r13
/* 803714EC  7D DB 03 A6 */	mtspr 0x1b, r14
/* 803714F0  7D FF 43 A6 */	mtspr 0x11f, r15
/* 803714F4  7E 10 83 A6 */	mtibatu 0, r16
/* 803714F8  7E 31 83 A6 */	mtibatl 0, r17
/* 803714FC  7E 52 83 A6 */	mtibatu 1, r18
/* 80371500  7E 73 83 A6 */	mtibatl 1, r19
/* 80371504  7E 94 83 A6 */	mtibatu 2, r20
/* 80371508  7E B5 83 A6 */	mtibatl 2, r21
/* 8037150C  7E D6 83 A6 */	mtibatu 3, r22
/* 80371510  7E F7 83 A6 */	mtibatl 3, r23
/* 80371514  7F 18 83 A6 */	mtdbatu 0, r24
/* 80371518  7F 39 83 A6 */	mtdbatl 0, r25
/* 8037151C  7F 5A 83 A6 */	mtdbatu 1, r26
/* 80371520  7F 7B 83 A6 */	mtdbatl 1, r27
/* 80371524  7F 9C 83 A6 */	mtdbatu 2, r28
/* 80371528  7F BD 83 A6 */	mtdbatl 2, r29
/* 8037152C  7F DE 83 A6 */	mtdbatu 3, r30
/* 80371530  7F FF 83 A6 */	mtdbatl 3, r31
/* 80371534  BA C2 02 5C */	lmw r22, 0x25c(r2)
/* 80371538  7E D9 03 A6 */	mtspr 0x19, r22
/* 8037153C  7E F3 03 A6 */	mtdar r23
/* 80371540  7F 12 03 A6 */	mtdsisr r24
/* 80371544  7F 30 43 A6 */	mtspr 0x110, r25
/* 80371548  7F 51 43 A6 */	mtspr 0x111, r26
/* 8037154C  7F 72 43 A6 */	mtspr 0x112, r27
/* 80371550  7F 93 43 A6 */	mtspr 0x113, r28
/* 80371554  7F D2 FB A6 */	mtspr 0x3f2, r30
/* 80371558  7F FA 43 A6 */	mtspr 0x11a, r31
/* 8037155C  4E 80 00 20 */	blr 
