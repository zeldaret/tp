lbl_805FA2FC:
/* 805FA2FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805FA300  7C 08 02 A6 */	mflr r0
/* 805FA304  90 01 00 24 */	stw r0, 0x24(r1)
/* 805FA308  39 61 00 20 */	addi r11, r1, 0x20
/* 805FA30C  4B D6 7E C8 */	b _savegpr_27
/* 805FA310  7C 7B 1B 78 */	mr r27, r3
/* 805FA314  88 03 26 98 */	lbz r0, 0x2698(r3)
/* 805FA318  28 00 00 02 */	cmplwi r0, 2
/* 805FA31C  40 82 00 44 */	bne lbl_805FA360
/* 805FA320  A8 BB 0A FC */	lha r5, 0xafc(r27)
/* 805FA324  54 A0 07 FF */	clrlwi. r0, r5, 0x1f
/* 805FA328  41 82 00 9C */	beq lbl_805FA3C4
/* 805FA32C  38 7B 25 AC */	addi r3, r27, 0x25ac
/* 805FA330  38 9B 25 B0 */	addi r4, r27, 0x25b0
/* 805FA334  54 A0 FF FE */	rlwinm r0, r5, 0x1f, 0x1f, 0x1f
/* 805FA338  1C A0 00 0C */	mulli r5, r0, 0xc
/* 805FA33C  38 A5 26 A8 */	addi r5, r5, 0x26a8
/* 805FA340  7C BB 2A 14 */	add r5, r27, r5
/* 805FA344  38 DB 04 E4 */	addi r6, r27, 0x4e4
/* 805FA348  3C E0 80 60 */	lis r7, lit_4460@ha
/* 805FA34C  C0 27 26 E8 */	lfs f1, lit_4460@l(r7)
/* 805FA350  38 FB 01 0C */	addi r7, r27, 0x10c
/* 805FA354  39 00 00 00 */	li r8, 0
/* 805FA358  4B A2 2C C8 */	b fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 805FA35C  48 00 00 68 */	b lbl_805FA3C4
lbl_805FA360:
/* 805FA360  28 00 00 01 */	cmplwi r0, 1
/* 805FA364  40 82 00 60 */	bne lbl_805FA3C4
/* 805FA368  3B 80 00 00 */	li r28, 0
/* 805FA36C  3B E0 00 00 */	li r31, 0
/* 805FA370  3B C0 00 00 */	li r30, 0
/* 805FA374  3C 60 80 60 */	lis r3, lit_4969@ha
/* 805FA378  3B A3 27 20 */	addi r29, r3, lit_4969@l
lbl_805FA37C:
/* 805FA37C  38 7E 25 AC */	addi r3, r30, 0x25ac
/* 805FA380  7C 7B 1A 14 */	add r3, r27, r3
/* 805FA384  38 1C 00 02 */	addi r0, r28, 2
/* 805FA388  54 04 10 3A */	slwi r4, r0, 2
/* 805FA38C  38 84 25 AC */	addi r4, r4, 0x25ac
/* 805FA390  7C 9B 22 14 */	add r4, r27, r4
/* 805FA394  38 BF 26 A8 */	addi r5, r31, 0x26a8
/* 805FA398  7C BB 2A 14 */	add r5, r27, r5
/* 805FA39C  38 DB 04 E4 */	addi r6, r27, 0x4e4
/* 805FA3A0  C0 3D 00 00 */	lfs f1, 0(r29)
/* 805FA3A4  38 FB 01 0C */	addi r7, r27, 0x10c
/* 805FA3A8  39 00 00 00 */	li r8, 0
/* 805FA3AC  4B A2 2C 74 */	b fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 805FA3B0  3B 9C 00 01 */	addi r28, r28, 1
/* 805FA3B4  2C 1C 00 02 */	cmpwi r28, 2
/* 805FA3B8  3B FF 00 0C */	addi r31, r31, 0xc
/* 805FA3BC  3B DE 00 04 */	addi r30, r30, 4
/* 805FA3C0  41 80 FF BC */	blt lbl_805FA37C
lbl_805FA3C4:
/* 805FA3C4  38 00 00 00 */	li r0, 0
/* 805FA3C8  98 1B 26 98 */	stb r0, 0x2698(r27)
/* 805FA3CC  39 61 00 20 */	addi r11, r1, 0x20
/* 805FA3D0  4B D6 7E 50 */	b _restgpr_27
/* 805FA3D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805FA3D8  7C 08 03 A6 */	mtlr r0
/* 805FA3DC  38 21 00 20 */	addi r1, r1, 0x20
/* 805FA3E0  4E 80 00 20 */	blr 
