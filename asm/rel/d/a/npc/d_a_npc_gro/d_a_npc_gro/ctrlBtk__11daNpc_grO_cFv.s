lbl_809DB774:
/* 809DB774  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809DB778  7C 08 02 A6 */	mflr r0
/* 809DB77C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809DB780  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809DB784  7C 7F 1B 78 */	mr r31, r3
/* 809DB788  80 03 0B DC */	lwz r0, 0xbdc(r3)
/* 809DB78C  28 00 00 00 */	cmplwi r0, 0
/* 809DB790  41 82 00 AC */	beq lbl_809DB83C
/* 809DB794  38 C0 00 00 */	li r6, 0
/* 809DB798  3C 80 80 9E */	lis r4, l_btkGetParamList@ha /* 0x809DF424@ha */
/* 809DB79C  84 A4 F4 24 */	lwzu r5, l_btkGetParamList@l(r4)  /* 0x809DF424@l */
/* 809DB7A0  2C 05 00 00 */	cmpwi r5, 0
/* 809DB7A4  41 80 00 20 */	blt lbl_809DB7C4
/* 809DB7A8  80 04 00 04 */	lwz r0, 4(r4)
/* 809DB7AC  54 00 10 3A */	slwi r0, r0, 2
/* 809DB7B0  3C 80 80 9E */	lis r4, l_resNames@ha /* 0x809DF4A4@ha */
/* 809DB7B4  38 84 F4 A4 */	addi r4, r4, l_resNames@l /* 0x809DF4A4@l */
/* 809DB7B8  7C 84 00 2E */	lwzx r4, r4, r0
/* 809DB7BC  4B 77 73 E9 */	bl getTexSRTKeyAnmP__8daNpcF_cFPci
/* 809DB7C0  7C 66 1B 78 */	mr r6, r3
lbl_809DB7C4:
/* 809DB7C4  80 1F 05 B4 */	lwz r0, 0x5b4(r31)
/* 809DB7C8  7C 06 00 40 */	cmplw r6, r0
/* 809DB7CC  40 82 00 64 */	bne lbl_809DB830
/* 809DB7D0  A8 1F 08 FE */	lha r0, 0x8fe(r31)
/* 809DB7D4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 809DB7D8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 809DB7DC  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 809DB7E0  7C 04 04 2E */	lfsx f0, r4, r0
/* 809DB7E4  3C 60 80 9E */	lis r3, lit_4812@ha /* 0x809DF01C@ha */
/* 809DB7E8  C0 43 F0 1C */	lfs f2, lit_4812@l(r3)  /* 0x809DF01C@l */
/* 809DB7EC  3C 60 80 9E */	lis r3, lit_4813@ha /* 0x809DF020@ha */
/* 809DB7F0  C0 23 F0 20 */	lfs f1, lit_4813@l(r3)  /* 0x809DF020@l */
/* 809DB7F4  EC 01 00 32 */	fmuls f0, f1, f0
/* 809DB7F8  EC 02 00 32 */	fmuls f0, f2, f0
/* 809DB7FC  80 7F 0B DC */	lwz r3, 0xbdc(r31)
/* 809DB800  D0 03 00 FC */	stfs f0, 0xfc(r3)
/* 809DB804  A8 1F 08 FC */	lha r0, 0x8fc(r31)
/* 809DB808  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 809DB80C  7C 04 04 2E */	lfsx f0, r4, r0
/* 809DB810  EC 01 00 32 */	fmuls f0, f1, f0
/* 809DB814  80 7F 0B DC */	lwz r3, 0xbdc(r31)
/* 809DB818  D0 03 01 00 */	stfs f0, 0x100(r3)
/* 809DB81C  38 00 00 01 */	li r0, 1
/* 809DB820  80 7F 0B DC */	lwz r3, 0xbdc(r31)
/* 809DB824  98 03 01 04 */	stb r0, 0x104(r3)
/* 809DB828  38 60 00 01 */	li r3, 1
/* 809DB82C  48 00 00 14 */	b lbl_809DB840
lbl_809DB830:
/* 809DB830  38 00 00 00 */	li r0, 0
/* 809DB834  80 7F 0B DC */	lwz r3, 0xbdc(r31)
/* 809DB838  98 03 01 04 */	stb r0, 0x104(r3)
lbl_809DB83C:
/* 809DB83C  38 60 00 00 */	li r3, 0
lbl_809DB840:
/* 809DB840  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809DB844  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809DB848  7C 08 03 A6 */	mtlr r0
/* 809DB84C  38 21 00 10 */	addi r1, r1, 0x10
/* 809DB850  4E 80 00 20 */	blr 
