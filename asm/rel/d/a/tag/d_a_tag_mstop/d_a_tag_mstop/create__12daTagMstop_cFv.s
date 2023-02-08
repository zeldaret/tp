lbl_805A6138:
/* 805A6138  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805A613C  7C 08 02 A6 */	mflr r0
/* 805A6140  90 01 00 24 */	stw r0, 0x24(r1)
/* 805A6144  39 61 00 20 */	addi r11, r1, 0x20
/* 805A6148  4B DB C0 95 */	bl _savegpr_29
/* 805A614C  7C 7F 1B 78 */	mr r31, r3
/* 805A6150  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 805A6154  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 805A6158  40 82 00 28 */	bne lbl_805A6180
/* 805A615C  7F E0 FB 79 */	or. r0, r31, r31
/* 805A6160  41 82 00 14 */	beq lbl_805A6174
/* 805A6164  7C 1D 03 78 */	mr r29, r0
/* 805A6168  4B A7 29 FD */	bl __ct__10fopAc_ac_cFv
/* 805A616C  38 7D 05 74 */	addi r3, r29, 0x574
/* 805A6170  4B CA 3D 91 */	bl __ct__10dMsgFlow_cFv
lbl_805A6174:
/* 805A6174  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 805A6178  60 00 00 08 */	ori r0, r0, 8
/* 805A617C  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_805A6180:
/* 805A6180  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 805A6184  54 00 86 3E */	rlwinm r0, r0, 0x10, 0x18, 0x1f
/* 805A6188  98 1F 05 6B */	stb r0, 0x56b(r31)
/* 805A618C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 805A6190  54 00 47 3E */	rlwinm r0, r0, 8, 0x1c, 0x1f
/* 805A6194  98 1F 05 6A */	stb r0, 0x56a(r31)
/* 805A6198  88 1F 05 6A */	lbz r0, 0x56a(r31)
/* 805A619C  28 00 00 01 */	cmplwi r0, 1
/* 805A61A0  41 82 00 0C */	beq lbl_805A61AC
/* 805A61A4  28 00 00 02 */	cmplwi r0, 2
/* 805A61A8  40 82 00 24 */	bne lbl_805A61CC
lbl_805A61AC:
/* 805A61AC  38 00 00 01 */	li r0, 1
/* 805A61B0  98 1F 05 6C */	stb r0, 0x56c(r31)
/* 805A61B4  88 1F 05 6A */	lbz r0, 0x56a(r31)
/* 805A61B8  28 00 00 02 */	cmplwi r0, 2
/* 805A61BC  40 82 00 18 */	bne lbl_805A61D4
/* 805A61C0  38 00 00 00 */	li r0, 0
/* 805A61C4  98 1F 05 6A */	stb r0, 0x56a(r31)
/* 805A61C8  48 00 00 0C */	b lbl_805A61D4
lbl_805A61CC:
/* 805A61CC  38 00 00 00 */	li r0, 0
/* 805A61D0  98 1F 05 6C */	stb r0, 0x56c(r31)
lbl_805A61D4:
/* 805A61D4  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 805A61D8  54 00 27 FF */	rlwinm. r0, r0, 4, 0x1f, 0x1f
/* 805A61DC  41 82 00 24 */	beq lbl_805A6200
/* 805A61E0  38 00 00 FF */	li r0, 0xff
/* 805A61E4  98 1F 05 68 */	stb r0, 0x568(r31)
/* 805A61E8  98 1F 05 69 */	stb r0, 0x569(r31)
/* 805A61EC  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 805A61F0  B0 1F 05 70 */	sth r0, 0x570(r31)
/* 805A61F4  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 805A61F8  B0 1F 05 72 */	sth r0, 0x572(r31)
/* 805A61FC  48 00 00 28 */	b lbl_805A6224
lbl_805A6200:
/* 805A6200  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 805A6204  98 1F 05 68 */	stb r0, 0x568(r31)
/* 805A6208  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 805A620C  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 805A6210  98 1F 05 69 */	stb r0, 0x569(r31)
/* 805A6214  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 805A6218  38 03 FF FF */	addi r0, r3, 0xFFFF /* 0x0000FFFF@l */
/* 805A621C  B0 1F 05 70 */	sth r0, 0x570(r31)
/* 805A6220  B0 1F 05 72 */	sth r0, 0x572(r31)
lbl_805A6224:
/* 805A6224  C0 3F 04 EC */	lfs f1, 0x4ec(r31)
/* 805A6228  3C 60 80 5A */	lis r3, lit_3863@ha /* 0x805A696C@ha */
/* 805A622C  C0 03 69 6C */	lfs f0, lit_3863@l(r3)  /* 0x805A696C@l */
/* 805A6230  EC 00 00 72 */	fmuls f0, f0, f1
/* 805A6234  EC 01 00 32 */	fmuls f0, f1, f0
/* 805A6238  D0 1F 05 C0 */	stfs f0, 0x5c0(r31)
/* 805A623C  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 805A6240  3C 60 80 5A */	lis r3, lit_3864@ha /* 0x805A6970@ha */
/* 805A6244  C0 23 69 70 */	lfs f1, lit_3864@l(r3)  /* 0x805A6970@l */
/* 805A6248  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 805A624C  EC 01 00 32 */	fmuls f0, f1, f0
/* 805A6250  EC 02 00 2A */	fadds f0, f2, f0
/* 805A6254  D0 1F 05 C4 */	stfs f0, 0x5c4(r31)
/* 805A6258  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 805A625C  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 805A6260  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805A6264  7C 04 07 74 */	extsb r4, r0
/* 805A6268  38 BF 05 C8 */	addi r5, r31, 0x5c8
/* 805A626C  38 C1 00 08 */	addi r6, r1, 8
/* 805A6270  4B BA F5 05 */	bl daNpcF_getPlayerInfoFromPlayerList__FiiR4cXyzR5csXyz
/* 805A6274  8B DF 05 6B */	lbz r30, 0x56b(r31)
/* 805A6278  28 1E 00 FF */	cmplwi r30, 0xff
/* 805A627C  41 82 00 68 */	beq lbl_805A62E4
/* 805A6280  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 805A6284  7C 1D 07 74 */	extsb r29, r0
/* 805A6288  7F A3 EB 78 */	mr r3, r29
/* 805A628C  4B A8 6F D1 */	bl dComIfGp_getRoomCamera__Fi
/* 805A6290  80 63 00 04 */	lwz r3, 4(r3)
/* 805A6294  1C 1E 00 18 */	mulli r0, r30, 0x18
/* 805A6298  7C 63 02 14 */	add r3, r3, r0
/* 805A629C  88 03 00 10 */	lbz r0, 0x10(r3)
/* 805A62A0  1F C0 00 14 */	mulli r30, r0, 0x14
/* 805A62A4  7F A3 EB 78 */	mr r3, r29
/* 805A62A8  4B A8 70 05 */	bl dComIfGp_getRoomArrow__Fi
/* 805A62AC  80 03 00 04 */	lwz r0, 4(r3)
/* 805A62B0  7C 60 F2 14 */	add r3, r0, r30
/* 805A62B4  C0 43 00 08 */	lfs f2, 8(r3)
/* 805A62B8  C0 23 00 04 */	lfs f1, 4(r3)
/* 805A62BC  C0 03 00 00 */	lfs f0, 0(r3)
/* 805A62C0  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 805A62C4  D0 3F 05 3C */	stfs f1, 0x53c(r31)
/* 805A62C8  D0 5F 05 40 */	stfs f2, 0x540(r31)
/* 805A62CC  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 805A62D0  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 805A62D4  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 805A62D8  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 805A62DC  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 805A62E0  D0 1F 05 58 */	stfs f0, 0x558(r31)
lbl_805A62E4:
/* 805A62E4  7F E3 FB 78 */	mr r3, r31
/* 805A62E8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A62EC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A62F0  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 805A62F4  4B A7 44 1D */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 805A62F8  B0 7F 04 E6 */	sth r3, 0x4e6(r31)
/* 805A62FC  38 60 00 04 */	li r3, 4
/* 805A6300  39 61 00 20 */	addi r11, r1, 0x20
/* 805A6304  4B DB BF 25 */	bl _restgpr_29
/* 805A6308  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805A630C  7C 08 03 A6 */	mtlr r0
/* 805A6310  38 21 00 20 */	addi r1, r1, 0x20
/* 805A6314  4E 80 00 20 */	blr 
