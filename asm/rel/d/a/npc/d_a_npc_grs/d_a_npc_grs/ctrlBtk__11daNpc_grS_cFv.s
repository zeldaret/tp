lbl_809E528C:
/* 809E528C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809E5290  7C 08 02 A6 */	mflr r0
/* 809E5294  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E5298  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809E529C  7C 7F 1B 78 */	mr r31, r3
/* 809E52A0  80 03 0B D8 */	lwz r0, 0xbd8(r3)
/* 809E52A4  28 00 00 00 */	cmplwi r0, 0
/* 809E52A8  41 82 00 AC */	beq lbl_809E5354
/* 809E52AC  38 C0 00 00 */	li r6, 0
/* 809E52B0  3C 80 80 9F */	lis r4, l_btkGetParamList@ha /* 0x809E804C@ha */
/* 809E52B4  84 A4 80 4C */	lwzu r5, l_btkGetParamList@l(r4)  /* 0x809E804C@l */
/* 809E52B8  2C 05 00 00 */	cmpwi r5, 0
/* 809E52BC  41 80 00 20 */	blt lbl_809E52DC
/* 809E52C0  80 04 00 04 */	lwz r0, 4(r4)
/* 809E52C4  54 00 10 3A */	slwi r0, r0, 2
/* 809E52C8  3C 80 80 9F */	lis r4, l_resNames@ha /* 0x809E8084@ha */
/* 809E52CC  38 84 80 84 */	addi r4, r4, l_resNames@l /* 0x809E8084@l */
/* 809E52D0  7C 84 00 2E */	lwzx r4, r4, r0
/* 809E52D4  4B 76 D8 D1 */	bl getTexSRTKeyAnmP__8daNpcF_cFPci
/* 809E52D8  7C 66 1B 78 */	mr r6, r3
lbl_809E52DC:
/* 809E52DC  80 1F 05 B4 */	lwz r0, 0x5b4(r31)
/* 809E52E0  7C 06 00 40 */	cmplw r6, r0
/* 809E52E4  40 82 00 64 */	bne lbl_809E5348
/* 809E52E8  A8 1F 08 FE */	lha r0, 0x8fe(r31)
/* 809E52EC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 809E52F0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 809E52F4  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 809E52F8  7C 04 04 2E */	lfsx f0, r4, r0
/* 809E52FC  3C 60 80 9E */	lis r3, lit_4746@ha /* 0x809E7E5C@ha */
/* 809E5300  C0 43 7E 5C */	lfs f2, lit_4746@l(r3)  /* 0x809E7E5C@l */
/* 809E5304  3C 60 80 9E */	lis r3, lit_4747@ha /* 0x809E7E60@ha */
/* 809E5308  C0 23 7E 60 */	lfs f1, lit_4747@l(r3)  /* 0x809E7E60@l */
/* 809E530C  EC 01 00 32 */	fmuls f0, f1, f0
/* 809E5310  EC 02 00 32 */	fmuls f0, f2, f0
/* 809E5314  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 809E5318  D0 03 00 FC */	stfs f0, 0xfc(r3)
/* 809E531C  A8 1F 08 FC */	lha r0, 0x8fc(r31)
/* 809E5320  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 809E5324  7C 04 04 2E */	lfsx f0, r4, r0
/* 809E5328  EC 01 00 32 */	fmuls f0, f1, f0
/* 809E532C  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 809E5330  D0 03 01 00 */	stfs f0, 0x100(r3)
/* 809E5334  38 00 00 01 */	li r0, 1
/* 809E5338  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 809E533C  98 03 01 04 */	stb r0, 0x104(r3)
/* 809E5340  38 60 00 01 */	li r3, 1
/* 809E5344  48 00 00 14 */	b lbl_809E5358
lbl_809E5348:
/* 809E5348  38 00 00 00 */	li r0, 0
/* 809E534C  80 7F 0B D8 */	lwz r3, 0xbd8(r31)
/* 809E5350  98 03 01 04 */	stb r0, 0x104(r3)
lbl_809E5354:
/* 809E5354  38 60 00 00 */	li r3, 0
lbl_809E5358:
/* 809E5358  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809E535C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809E5360  7C 08 03 A6 */	mtlr r0
/* 809E5364  38 21 00 10 */	addi r1, r1, 0x10
/* 809E5368  4E 80 00 20 */	blr 
