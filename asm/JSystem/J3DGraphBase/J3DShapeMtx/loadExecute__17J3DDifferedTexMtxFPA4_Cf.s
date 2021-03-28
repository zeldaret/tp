lbl_8031322C:
/* 8031322C  94 21 FF 20 */	stwu r1, -0xe0(r1)
/* 80313230  7C 08 02 A6 */	mflr r0
/* 80313234  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 80313238  39 61 00 E0 */	addi r11, r1, 0xe0
/* 8031323C  48 04 EF 91 */	bl _savegpr_25
/* 80313240  7C 7C 1B 78 */	mr r28, r3
/* 80313244  83 6D 90 40 */	lwz r27, sTexGenBlock__17J3DDifferedTexMtx(r13)
/* 80313248  83 ED 90 44 */	lwz r31, sTexMtxObj__17J3DDifferedTexMtx(r13)
/* 8031324C  A0 9F 00 08 */	lhz r4, 8(r31)
/* 80313250  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80313254  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80313258  80 03 00 34 */	lwz r0, 0x34(r3)
/* 8031325C  54 00 00 43 */	rlwinm. r0, r0, 0, 1, 1
/* 80313260  41 82 02 BC */	beq lbl_8031351C
/* 80313264  3B 20 00 00 */	li r25, 0
/* 80313268  54 9C 04 3E */	clrlwi r28, r4, 0x10
/* 8031326C  48 00 02 A0 */	b lbl_8031350C
lbl_80313270:
/* 80313270  7F 63 DB 78 */	mr r3, r27
/* 80313274  57 3A 04 3E */	clrlwi r26, r25, 0x10
/* 80313278  7F 44 D3 78 */	mr r4, r26
/* 8031327C  81 9B 00 00 */	lwz r12, 0(r27)
/* 80313280  81 8C 00 48 */	lwz r12, 0x48(r12)
/* 80313284  7D 89 03 A6 */	mtctr r12
/* 80313288  4E 80 04 21 */	bctrl 
/* 8031328C  88 03 00 00 */	lbz r0, 0(r3)
/* 80313290  2C 00 00 01 */	cmpwi r0, 1
/* 80313294  41 82 00 0C */	beq lbl_803132A0
/* 80313298  2C 00 00 00 */	cmpwi r0, 0
/* 8031329C  40 82 02 6C */	bne lbl_80313508
lbl_803132A0:
/* 803132A0  7F 63 DB 78 */	mr r3, r27
/* 803132A4  7F 44 D3 78 */	mr r4, r26
/* 803132A8  81 9B 00 00 */	lwz r12, 0(r27)
/* 803132AC  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 803132B0  7D 89 03 A6 */	mtctr r12
/* 803132B4  4E 80 04 21 */	bctrl 
/* 803132B8  7C 64 1B 78 */	mr r4, r3
/* 803132BC  88 A3 00 01 */	lbz r5, 1(r3)
/* 803132C0  54 A0 06 BE */	clrlwi r0, r5, 0x1a
/* 803132C4  28 00 00 0B */	cmplwi r0, 0xb
/* 803132C8  41 81 02 1C */	bgt lbl_803134E4
/* 803132CC  3C 60 80 3D */	lis r3, lit_1034@ha
/* 803132D0  38 63 DB 40 */	addi r3, r3, lit_1034@l
/* 803132D4  54 00 10 3A */	slwi r0, r0, 2
/* 803132D8  7C 03 00 2E */	lwzx r0, r3, r0
/* 803132DC  7C 09 03 A6 */	mtctr r0
/* 803132E0  4E 80 04 20 */	bctr 
/* 803132E4  80 7F 00 00 */	lwz r3, 0(r31)
/* 803132E8  1C 1A 00 30 */	mulli r0, r26, 0x30
/* 803132EC  7C 03 02 14 */	add r0, r3, r0
/* 803132F0  7C 03 03 78 */	mr r3, r0
/* 803132F4  48 00 02 00 */	b lbl_803134F4
/* 803132F8  80 7F 00 00 */	lwz r3, 0(r31)
/* 803132FC  1C 1A 00 30 */	mulli r0, r26, 0x30
/* 80313300  7C 03 02 14 */	add r0, r3, r0
/* 80313304  7C 03 03 78 */	mr r3, r0
/* 80313308  48 00 01 EC */	b lbl_803134F4
/* 8031330C  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80313310  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80313314  38 81 00 88 */	addi r4, r1, 0x88
/* 80313318  48 03 32 99 */	bl PSMTXInverse
/* 8031331C  80 7F 00 00 */	lwz r3, 0(r31)
/* 80313320  1C 1A 00 30 */	mulli r0, r26, 0x30
/* 80313324  7C 63 02 14 */	add r3, r3, r0
/* 80313328  38 81 00 88 */	addi r4, r1, 0x88
/* 8031332C  7C 85 23 78 */	mr r5, r4
/* 80313330  48 03 31 B5 */	bl PSMTXConcat
/* 80313334  38 61 00 88 */	addi r3, r1, 0x88
/* 80313338  48 00 01 BC */	b lbl_803134F4
/* 8031333C  54 A0 CF FF */	rlwinm. r0, r5, 0x19, 0x1f, 0x1f
/* 80313340  40 82 00 18 */	bne lbl_80313358
/* 80313344  38 64 00 10 */	addi r3, r4, 0x10
/* 80313348  38 84 00 04 */	addi r4, r4, 4
/* 8031334C  38 A1 00 08 */	addi r5, r1, 8
/* 80313350  4B FF E8 31 */	bl J3DGetTextureMtxOld__FRC17J3DTextureSRTInfoRC3VecPA4_f
/* 80313354  48 00 00 18 */	b lbl_8031336C
lbl_80313358:
/* 80313358  28 00 00 01 */	cmplwi r0, 1
/* 8031335C  40 82 00 10 */	bne lbl_8031336C
/* 80313360  38 64 00 10 */	addi r3, r4, 0x10
/* 80313364  38 81 00 08 */	addi r4, r1, 8
/* 80313368  4B FF E9 7D */	bl J3DGetTextureMtxMayaOld__FRC17J3DTextureSRTInfoPA4_f
lbl_8031336C:
/* 8031336C  80 7F 00 04 */	lwz r3, 4(r31)
/* 80313370  57 40 30 32 */	slwi r0, r26, 6
/* 80313374  7C 83 02 14 */	add r4, r3, r0
/* 80313378  38 61 00 08 */	addi r3, r1, 8
/* 8031337C  38 A1 00 88 */	addi r5, r1, 0x88
/* 80313380  4B FF EA CD */	bl J3DMtxProjConcat__FPA4_fPA4_fPA4_f
/* 80313384  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80313388  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 8031338C  38 81 00 48 */	addi r4, r1, 0x48
/* 80313390  48 03 32 21 */	bl PSMTXInverse
/* 80313394  38 61 00 88 */	addi r3, r1, 0x88
/* 80313398  38 81 00 48 */	addi r4, r1, 0x48
/* 8031339C  7C 65 1B 78 */	mr r5, r3
/* 803133A0  48 03 31 45 */	bl PSMTXConcat
/* 803133A4  C0 02 C9 98 */	lfs f0, lit_1032(r2)
/* 803133A8  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 803133AC  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 803133B0  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 803133B4  38 61 00 88 */	addi r3, r1, 0x88
/* 803133B8  48 00 01 3C */	b lbl_803134F4
/* 803133BC  54 A0 CF FF */	rlwinm. r0, r5, 0x19, 0x1f, 0x1f
/* 803133C0  40 82 00 18 */	bne lbl_803133D8
/* 803133C4  38 64 00 10 */	addi r3, r4, 0x10
/* 803133C8  38 84 00 04 */	addi r4, r4, 4
/* 803133CC  38 A1 00 08 */	addi r5, r1, 8
/* 803133D0  4B FF E6 FD */	bl J3DGetTextureMtx__FRC17J3DTextureSRTInfoRC3VecPA4_f
/* 803133D4  48 00 00 18 */	b lbl_803133EC
lbl_803133D8:
/* 803133D8  28 00 00 01 */	cmplwi r0, 1
/* 803133DC  40 82 00 10 */	bne lbl_803133EC
/* 803133E0  38 64 00 10 */	addi r3, r4, 0x10
/* 803133E4  38 81 00 08 */	addi r4, r1, 8
/* 803133E8  4B FF E8 4D */	bl J3DGetTextureMtxMaya__FRC17J3DTextureSRTInfoPA4_f
lbl_803133EC:
/* 803133EC  38 61 00 08 */	addi r3, r1, 8
/* 803133F0  3C 80 80 3D */	lis r4, qMtx@ha
/* 803133F4  38 84 DA B0 */	addi r4, r4, qMtx@l
/* 803133F8  7C 65 1B 78 */	mr r5, r3
/* 803133FC  48 03 30 E9 */	bl PSMTXConcat
/* 80313400  80 7F 00 04 */	lwz r3, 4(r31)
/* 80313404  57 40 30 32 */	slwi r0, r26, 6
/* 80313408  7C 83 02 14 */	add r4, r3, r0
/* 8031340C  38 61 00 08 */	addi r3, r1, 8
/* 80313410  38 A1 00 88 */	addi r5, r1, 0x88
/* 80313414  4B FF EA 39 */	bl J3DMtxProjConcat__FPA4_fPA4_fPA4_f
/* 80313418  3C 60 80 43 */	lis r3, j3dSys@ha
/* 8031341C  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80313420  38 81 00 48 */	addi r4, r1, 0x48
/* 80313424  48 03 31 8D */	bl PSMTXInverse
/* 80313428  38 61 00 88 */	addi r3, r1, 0x88
/* 8031342C  38 81 00 48 */	addi r4, r1, 0x48
/* 80313430  7C 65 1B 78 */	mr r5, r3
/* 80313434  48 03 30 B1 */	bl PSMTXConcat
/* 80313438  C0 02 C9 98 */	lfs f0, lit_1032(r2)
/* 8031343C  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 80313440  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 80313444  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80313448  38 61 00 88 */	addi r3, r1, 0x88
/* 8031344C  48 00 00 A8 */	b lbl_803134F4
/* 80313450  54 A0 CF FF */	rlwinm. r0, r5, 0x19, 0x1f, 0x1f
/* 80313454  40 82 00 18 */	bne lbl_8031346C
/* 80313458  38 64 00 10 */	addi r3, r4, 0x10
/* 8031345C  38 84 00 04 */	addi r4, r4, 4
/* 80313460  38 A1 00 08 */	addi r5, r1, 8
/* 80313464  4B FF E6 69 */	bl J3DGetTextureMtx__FRC17J3DTextureSRTInfoRC3VecPA4_f
/* 80313468  48 00 00 18 */	b lbl_80313480
lbl_8031346C:
/* 8031346C  28 00 00 01 */	cmplwi r0, 1
/* 80313470  40 82 00 10 */	bne lbl_80313480
/* 80313474  38 64 00 10 */	addi r3, r4, 0x10
/* 80313478  38 81 00 08 */	addi r4, r1, 8
/* 8031347C  4B FF E7 B9 */	bl J3DGetTextureMtxMaya__FRC17J3DTextureSRTInfoPA4_f
lbl_80313480:
/* 80313480  38 61 00 08 */	addi r3, r1, 8
/* 80313484  3C 80 80 3D */	lis r4, qMtx2@ha
/* 80313488  38 84 DA E0 */	addi r4, r4, qMtx2@l
/* 8031348C  7C 65 1B 78 */	mr r5, r3
/* 80313490  48 03 30 55 */	bl PSMTXConcat
/* 80313494  80 7F 00 04 */	lwz r3, 4(r31)
/* 80313498  57 40 30 32 */	slwi r0, r26, 6
/* 8031349C  7C 83 02 14 */	add r4, r3, r0
/* 803134A0  38 61 00 08 */	addi r3, r1, 8
/* 803134A4  38 A1 00 88 */	addi r5, r1, 0x88
/* 803134A8  4B FF E9 A5 */	bl J3DMtxProjConcat__FPA4_fPA4_fPA4_f
/* 803134AC  3C 60 80 43 */	lis r3, j3dSys@ha
/* 803134B0  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 803134B4  38 81 00 48 */	addi r4, r1, 0x48
/* 803134B8  48 03 30 F9 */	bl PSMTXInverse
/* 803134BC  38 61 00 88 */	addi r3, r1, 0x88
/* 803134C0  38 81 00 48 */	addi r4, r1, 0x48
/* 803134C4  7C 65 1B 78 */	mr r5, r3
/* 803134C8  48 03 30 1D */	bl PSMTXConcat
/* 803134CC  C0 02 C9 98 */	lfs f0, lit_1032(r2)
/* 803134D0  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 803134D4  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 803134D8  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 803134DC  38 61 00 88 */	addi r3, r1, 0x88
/* 803134E0  48 00 00 14 */	b lbl_803134F4
lbl_803134E4:
/* 803134E4  80 7F 00 00 */	lwz r3, 0(r31)
/* 803134E8  1C 1A 00 30 */	mulli r0, r26, 0x30
/* 803134EC  7C 03 02 14 */	add r0, r3, r0
/* 803134F0  7C 03 03 78 */	mr r3, r0
lbl_803134F4:
/* 803134F4  57 20 04 3E */	clrlwi r0, r25, 0x10
/* 803134F8  1C 80 00 03 */	mulli r4, r0, 3
/* 803134FC  38 84 00 40 */	addi r4, r4, 0x40
/* 80313500  38 A0 00 00 */	li r5, 0
/* 80313504  48 04 CE 1D */	bl GXLoadTexMtxImm
lbl_80313508:
/* 80313508  3B 39 00 01 */	addi r25, r25, 1
lbl_8031350C:
/* 8031350C  57 20 04 3E */	clrlwi r0, r25, 0x10
/* 80313510  7C 00 E0 40 */	cmplw r0, r28
/* 80313514  41 80 FD 5C */	blt lbl_80313270
/* 80313518  48 00 02 F8 */	b lbl_80313810
lbl_8031351C:
/* 8031351C  3B A0 00 00 */	li r29, 0
/* 80313520  54 9A 04 3E */	clrlwi r26, r4, 0x10
/* 80313524  48 00 02 E0 */	b lbl_80313804
lbl_80313528:
/* 80313528  7F 63 DB 78 */	mr r3, r27
/* 8031352C  57 B9 04 3E */	clrlwi r25, r29, 0x10
/* 80313530  7F 24 CB 78 */	mr r4, r25
/* 80313534  81 9B 00 00 */	lwz r12, 0(r27)
/* 80313538  81 8C 00 48 */	lwz r12, 0x48(r12)
/* 8031353C  7D 89 03 A6 */	mtctr r12
/* 80313540  4E 80 04 21 */	bctrl 
/* 80313544  88 03 00 00 */	lbz r0, 0(r3)
/* 80313548  2C 00 00 01 */	cmpwi r0, 1
/* 8031354C  41 82 00 0C */	beq lbl_80313558
/* 80313550  2C 00 00 00 */	cmpwi r0, 0
/* 80313554  40 82 02 AC */	bne lbl_80313800
lbl_80313558:
/* 80313558  7F 63 DB 78 */	mr r3, r27
/* 8031355C  7F 24 CB 78 */	mr r4, r25
/* 80313560  81 9B 00 00 */	lwz r12, 0(r27)
/* 80313564  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 80313568  7D 89 03 A6 */	mtctr r12
/* 8031356C  4E 80 04 21 */	bctrl 
/* 80313570  7C 7E 1B 78 */	mr r30, r3
/* 80313574  88 83 00 01 */	lbz r4, 1(r3)
/* 80313578  54 80 06 BE */	clrlwi r0, r4, 0x1a
/* 8031357C  28 00 00 0B */	cmplwi r0, 0xb
/* 80313580  41 81 02 60 */	bgt lbl_803137E0
/* 80313584  3C 60 80 3D */	lis r3, lit_1035@ha
/* 80313588  38 63 DB 10 */	addi r3, r3, lit_1035@l
/* 8031358C  54 00 10 3A */	slwi r0, r0, 2
/* 80313590  7C 03 00 2E */	lwzx r0, r3, r0
/* 80313594  7C 09 03 A6 */	mtctr r0
/* 80313598  4E 80 04 20 */	bctr 
/* 8031359C  80 7F 00 00 */	lwz r3, 0(r31)
/* 803135A0  1C 19 00 30 */	mulli r0, r25, 0x30
/* 803135A4  7C 63 02 14 */	add r3, r3, r0
/* 803135A8  7F 84 E3 78 */	mr r4, r28
/* 803135AC  38 A1 00 88 */	addi r5, r1, 0x88
/* 803135B0  48 03 2F 35 */	bl PSMTXConcat
/* 803135B4  38 61 00 88 */	addi r3, r1, 0x88
/* 803135B8  48 00 02 34 */	b lbl_803137EC
/* 803135BC  7F 83 E3 78 */	mr r3, r28
/* 803135C0  38 81 00 48 */	addi r4, r1, 0x48
/* 803135C4  48 03 2E ED */	bl PSMTXCopy
/* 803135C8  C0 02 C9 98 */	lfs f0, lit_1032(r2)
/* 803135CC  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 803135D0  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 803135D4  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 803135D8  80 7F 00 00 */	lwz r3, 0(r31)
/* 803135DC  1C 19 00 30 */	mulli r0, r25, 0x30
/* 803135E0  7C 63 02 14 */	add r3, r3, r0
/* 803135E4  38 81 00 48 */	addi r4, r1, 0x48
/* 803135E8  38 A1 00 88 */	addi r5, r1, 0x88
/* 803135EC  48 03 2E F9 */	bl PSMTXConcat
/* 803135F0  38 61 00 88 */	addi r3, r1, 0x88
/* 803135F4  48 00 01 F8 */	b lbl_803137EC
/* 803135F8  80 7F 00 00 */	lwz r3, 0(r31)
/* 803135FC  1C 19 00 30 */	mulli r0, r25, 0x30
/* 80313600  7C 63 02 14 */	add r3, r3, r0
/* 80313604  48 00 01 E8 */	b lbl_803137EC
/* 80313608  54 80 CF FF */	rlwinm. r0, r4, 0x19, 0x1f, 0x1f
/* 8031360C  40 82 00 18 */	bne lbl_80313624
/* 80313610  38 7E 00 10 */	addi r3, r30, 0x10
/* 80313614  38 9E 00 04 */	addi r4, r30, 4
/* 80313618  38 A1 00 08 */	addi r5, r1, 8
/* 8031361C  4B FF E5 65 */	bl J3DGetTextureMtxOld__FRC17J3DTextureSRTInfoRC3VecPA4_f
/* 80313620  48 00 00 18 */	b lbl_80313638
lbl_80313624:
/* 80313624  28 00 00 01 */	cmplwi r0, 1
/* 80313628  40 82 00 10 */	bne lbl_80313638
/* 8031362C  38 7E 00 10 */	addi r3, r30, 0x10
/* 80313630  38 81 00 08 */	addi r4, r1, 8
/* 80313634  4B FF E6 B1 */	bl J3DGetTextureMtxMayaOld__FRC17J3DTextureSRTInfoPA4_f
lbl_80313638:
/* 80313638  80 7F 00 04 */	lwz r3, 4(r31)
/* 8031363C  57 20 30 32 */	slwi r0, r25, 6
/* 80313640  7C 83 02 14 */	add r4, r3, r0
/* 80313644  38 61 00 08 */	addi r3, r1, 8
/* 80313648  38 A1 00 88 */	addi r5, r1, 0x88
/* 8031364C  4B FF E8 01 */	bl J3DMtxProjConcat__FPA4_fPA4_fPA4_f
/* 80313650  3C 60 80 43 */	lis r3, j3dSys@ha
/* 80313654  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 80313658  38 81 00 48 */	addi r4, r1, 0x48
/* 8031365C  48 03 2F 55 */	bl PSMTXInverse
/* 80313660  38 61 00 88 */	addi r3, r1, 0x88
/* 80313664  38 81 00 48 */	addi r4, r1, 0x48
/* 80313668  7C 65 1B 78 */	mr r5, r3
/* 8031366C  48 03 2E 79 */	bl PSMTXConcat
/* 80313670  38 61 00 88 */	addi r3, r1, 0x88
/* 80313674  7F 84 E3 78 */	mr r4, r28
/* 80313678  7C 65 1B 78 */	mr r5, r3
/* 8031367C  48 03 2E 69 */	bl PSMTXConcat
/* 80313680  C0 02 C9 98 */	lfs f0, lit_1032(r2)
/* 80313684  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 80313688  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 8031368C  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80313690  38 61 00 88 */	addi r3, r1, 0x88
/* 80313694  48 00 01 58 */	b lbl_803137EC
/* 80313698  54 80 CF FF */	rlwinm. r0, r4, 0x19, 0x1f, 0x1f
/* 8031369C  40 82 00 18 */	bne lbl_803136B4
/* 803136A0  38 7E 00 10 */	addi r3, r30, 0x10
/* 803136A4  38 9E 00 04 */	addi r4, r30, 4
/* 803136A8  38 A1 00 08 */	addi r5, r1, 8
/* 803136AC  4B FF E4 21 */	bl J3DGetTextureMtx__FRC17J3DTextureSRTInfoRC3VecPA4_f
/* 803136B0  48 00 00 18 */	b lbl_803136C8
lbl_803136B4:
/* 803136B4  28 00 00 01 */	cmplwi r0, 1
/* 803136B8  40 82 00 10 */	bne lbl_803136C8
/* 803136BC  38 7E 00 10 */	addi r3, r30, 0x10
/* 803136C0  38 81 00 08 */	addi r4, r1, 8
/* 803136C4  4B FF E5 71 */	bl J3DGetTextureMtxMaya__FRC17J3DTextureSRTInfoPA4_f
lbl_803136C8:
/* 803136C8  38 61 00 08 */	addi r3, r1, 8
/* 803136CC  3C 80 80 3D */	lis r4, qMtx@ha
/* 803136D0  38 84 DA B0 */	addi r4, r4, qMtx@l
/* 803136D4  7C 65 1B 78 */	mr r5, r3
/* 803136D8  48 03 2E 0D */	bl PSMTXConcat
/* 803136DC  80 7F 00 04 */	lwz r3, 4(r31)
/* 803136E0  57 20 30 32 */	slwi r0, r25, 6
/* 803136E4  7C 83 02 14 */	add r4, r3, r0
/* 803136E8  38 61 00 08 */	addi r3, r1, 8
/* 803136EC  38 A1 00 88 */	addi r5, r1, 0x88
/* 803136F0  4B FF E7 5D */	bl J3DMtxProjConcat__FPA4_fPA4_fPA4_f
/* 803136F4  3C 60 80 43 */	lis r3, j3dSys@ha
/* 803136F8  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 803136FC  38 81 00 48 */	addi r4, r1, 0x48
/* 80313700  48 03 2E B1 */	bl PSMTXInverse
/* 80313704  38 61 00 88 */	addi r3, r1, 0x88
/* 80313708  38 81 00 48 */	addi r4, r1, 0x48
/* 8031370C  7C 65 1B 78 */	mr r5, r3
/* 80313710  48 03 2D D5 */	bl PSMTXConcat
/* 80313714  38 61 00 88 */	addi r3, r1, 0x88
/* 80313718  7F 84 E3 78 */	mr r4, r28
/* 8031371C  7C 65 1B 78 */	mr r5, r3
/* 80313720  48 03 2D C5 */	bl PSMTXConcat
/* 80313724  C0 02 C9 98 */	lfs f0, lit_1032(r2)
/* 80313728  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 8031372C  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 80313730  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 80313734  38 61 00 88 */	addi r3, r1, 0x88
/* 80313738  48 00 00 B4 */	b lbl_803137EC
/* 8031373C  54 80 CF FF */	rlwinm. r0, r4, 0x19, 0x1f, 0x1f
/* 80313740  40 82 00 18 */	bne lbl_80313758
/* 80313744  38 7E 00 10 */	addi r3, r30, 0x10
/* 80313748  38 9E 00 04 */	addi r4, r30, 4
/* 8031374C  38 A1 00 08 */	addi r5, r1, 8
/* 80313750  4B FF E3 7D */	bl J3DGetTextureMtx__FRC17J3DTextureSRTInfoRC3VecPA4_f
/* 80313754  48 00 00 18 */	b lbl_8031376C
lbl_80313758:
/* 80313758  28 00 00 01 */	cmplwi r0, 1
/* 8031375C  40 82 00 10 */	bne lbl_8031376C
/* 80313760  38 7E 00 10 */	addi r3, r30, 0x10
/* 80313764  38 81 00 08 */	addi r4, r1, 8
/* 80313768  4B FF E4 CD */	bl J3DGetTextureMtxMaya__FRC17J3DTextureSRTInfoPA4_f
lbl_8031376C:
/* 8031376C  38 61 00 08 */	addi r3, r1, 8
/* 80313770  3C 80 80 3D */	lis r4, qMtx2@ha
/* 80313774  38 84 DA E0 */	addi r4, r4, qMtx2@l
/* 80313778  7C 65 1B 78 */	mr r5, r3
/* 8031377C  48 03 2D 69 */	bl PSMTXConcat
/* 80313780  80 7F 00 04 */	lwz r3, 4(r31)
/* 80313784  57 20 30 32 */	slwi r0, r25, 6
/* 80313788  7C 83 02 14 */	add r4, r3, r0
/* 8031378C  38 61 00 08 */	addi r3, r1, 8
/* 80313790  38 A1 00 88 */	addi r5, r1, 0x88
/* 80313794  4B FF E6 B9 */	bl J3DMtxProjConcat__FPA4_fPA4_fPA4_f
/* 80313798  3C 60 80 43 */	lis r3, j3dSys@ha
/* 8031379C  38 63 4A C8 */	addi r3, r3, j3dSys@l
/* 803137A0  38 81 00 48 */	addi r4, r1, 0x48
/* 803137A4  48 03 2E 0D */	bl PSMTXInverse
/* 803137A8  38 61 00 88 */	addi r3, r1, 0x88
/* 803137AC  38 81 00 48 */	addi r4, r1, 0x48
/* 803137B0  7C 65 1B 78 */	mr r5, r3
/* 803137B4  48 03 2D 31 */	bl PSMTXConcat
/* 803137B8  38 61 00 88 */	addi r3, r1, 0x88
/* 803137BC  7F 84 E3 78 */	mr r4, r28
/* 803137C0  7C 65 1B 78 */	mr r5, r3
/* 803137C4  48 03 2D 21 */	bl PSMTXConcat
/* 803137C8  C0 02 C9 98 */	lfs f0, lit_1032(r2)
/* 803137CC  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 803137D0  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 803137D4  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 803137D8  38 61 00 88 */	addi r3, r1, 0x88
/* 803137DC  48 00 00 10 */	b lbl_803137EC
lbl_803137E0:
/* 803137E0  80 7F 00 00 */	lwz r3, 0(r31)
/* 803137E4  1C 19 00 30 */	mulli r0, r25, 0x30
/* 803137E8  7C 63 02 14 */	add r3, r3, r0
lbl_803137EC:
/* 803137EC  57 A0 04 3E */	clrlwi r0, r29, 0x10
/* 803137F0  1C 80 00 03 */	mulli r4, r0, 3
/* 803137F4  38 84 00 1E */	addi r4, r4, 0x1e
/* 803137F8  88 BE 00 00 */	lbz r5, 0(r30)
/* 803137FC  48 04 CB 25 */	bl GXLoadTexMtxImm
lbl_80313800:
/* 80313800  3B BD 00 01 */	addi r29, r29, 1
lbl_80313804:
/* 80313804  57 A0 04 3E */	clrlwi r0, r29, 0x10
/* 80313808  7C 00 D0 40 */	cmplw r0, r26
/* 8031380C  41 80 FD 1C */	blt lbl_80313528
lbl_80313810:
/* 80313810  39 61 00 E0 */	addi r11, r1, 0xe0
/* 80313814  48 04 EA 05 */	bl _restgpr_25
/* 80313818  80 01 00 E4 */	lwz r0, 0xe4(r1)
/* 8031381C  7C 08 03 A6 */	mtlr r0
/* 80313820  38 21 00 E0 */	addi r1, r1, 0xe0
/* 80313824  4E 80 00 20 */	blr 
