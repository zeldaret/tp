lbl_8063BB40:
/* 8063BB40  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 8063BB44  7C 08 02 A6 */	mflr r0
/* 8063BB48  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 8063BB4C  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 8063BB50  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, 0 /* qr0 */
/* 8063BB54  39 61 00 C0 */	addi r11, r1, 0xc0
/* 8063BB58  4B D2 66 80 */	b _savegpr_28
/* 8063BB5C  7C 7D 1B 78 */	mr r29, r3
/* 8063BB60  3C 60 80 64 */	lis r3, lit_3776@ha
/* 8063BB64  3B E3 DC 84 */	addi r31, r3, lit_3776@l
/* 8063BB68  38 61 00 70 */	addi r3, r1, 0x70
/* 8063BB6C  80 9D 06 68 */	lwz r4, 0x668(r29)
/* 8063BB70  48 00 20 E5 */	bl getIceCenterPos__8daB_YO_cFv
/* 8063BB74  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 8063BB78  D0 01 00 88 */	stfs f0, 0x88(r1)
/* 8063BB7C  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 8063BB80  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 8063BB84  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 8063BB88  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 8063BB8C  80 7D 06 68 */	lwz r3, 0x668(r29)
/* 8063BB90  C3 E3 0F 4C */	lfs f31, 0xf4c(r3)
/* 8063BB94  AB 83 0F 5C */	lha r28, 0xf5c(r3)
/* 8063BB98  80 1D 06 98 */	lwz r0, 0x698(r29)
/* 8063BB9C  2C 00 00 06 */	cmpwi r0, 6
/* 8063BBA0  41 82 08 30 */	beq lbl_8063C3D0
/* 8063BBA4  40 80 00 1C */	bge lbl_8063BBC0
/* 8063BBA8  2C 00 00 00 */	cmpwi r0, 0
/* 8063BBAC  41 82 00 28 */	beq lbl_8063BBD4
/* 8063BBB0  41 80 08 20 */	blt lbl_8063C3D0
/* 8063BBB4  2C 00 00 05 */	cmpwi r0, 5
/* 8063BBB8  40 80 00 38 */	bge lbl_8063BBF0
/* 8063BBBC  48 00 08 14 */	b lbl_8063C3D0
lbl_8063BBC0:
/* 8063BBC0  2C 00 00 0A */	cmpwi r0, 0xa
/* 8063BBC4  40 80 08 0C */	bge lbl_8063C3D0
/* 8063BBC8  2C 00 00 08 */	cmpwi r0, 8
/* 8063BBCC  40 80 03 40 */	bge lbl_8063BF0C
/* 8063BBD0  48 00 02 A4 */	b lbl_8063BE74
lbl_8063BBD4:
/* 8063BBD4  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8063BBD8  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 8063BBDC  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8063BBE0  38 00 00 5A */	li r0, 0x5a
/* 8063BBE4  90 1D 06 A4 */	stw r0, 0x6a4(r29)
/* 8063BBE8  38 00 00 05 */	li r0, 5
/* 8063BBEC  90 1D 06 98 */	stw r0, 0x698(r29)
lbl_8063BBF0:
/* 8063BBF0  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702FA@ha */
/* 8063BBF4  38 03 02 FA */	addi r0, r3, 0x02FA /* 0x000702FA@l */
/* 8063BBF8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8063BBFC  38 7D 06 48 */	addi r3, r29, 0x648
/* 8063BC00  38 81 00 24 */	addi r4, r1, 0x24
/* 8063BC04  38 A0 00 00 */	li r5, 0
/* 8063BC08  38 C0 FF FF */	li r6, -1
/* 8063BC0C  81 9D 06 58 */	lwz r12, 0x658(r29)
/* 8063BC10  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8063BC14  7D 89 03 A6 */	mtctr r12
/* 8063BC18  4E 80 04 21 */	bctrl 
/* 8063BC1C  38 00 00 01 */	li r0, 1
/* 8063BC20  98 1D 06 AD */	stb r0, 0x6ad(r29)
/* 8063BC24  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8063BC28  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8063BC2C  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8063BC30  C0 23 04 D8 */	lfs f1, 0x4d8(r3)
/* 8063BC34  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 8063BC38  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8063BC3C  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8063BC40  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8063BC44  D0 21 00 6C */	stfs f1, 0x6c(r1)
/* 8063BC48  38 61 00 64 */	addi r3, r1, 0x64
/* 8063BC4C  4B D0 B4 EC */	b PSVECSquareMag
/* 8063BC50  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8063BC54  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8063BC58  40 81 00 58 */	ble lbl_8063BCB0
/* 8063BC5C  FC 00 08 34 */	frsqrte f0, f1
/* 8063BC60  C8 9F 00 B8 */	lfd f4, 0xb8(r31)
/* 8063BC64  FC 44 00 32 */	fmul f2, f4, f0
/* 8063BC68  C8 7F 00 C0 */	lfd f3, 0xc0(r31)
/* 8063BC6C  FC 00 00 32 */	fmul f0, f0, f0
/* 8063BC70  FC 01 00 32 */	fmul f0, f1, f0
/* 8063BC74  FC 03 00 28 */	fsub f0, f3, f0
/* 8063BC78  FC 02 00 32 */	fmul f0, f2, f0
/* 8063BC7C  FC 44 00 32 */	fmul f2, f4, f0
/* 8063BC80  FC 00 00 32 */	fmul f0, f0, f0
/* 8063BC84  FC 01 00 32 */	fmul f0, f1, f0
/* 8063BC88  FC 03 00 28 */	fsub f0, f3, f0
/* 8063BC8C  FC 02 00 32 */	fmul f0, f2, f0
/* 8063BC90  FC 44 00 32 */	fmul f2, f4, f0
/* 8063BC94  FC 00 00 32 */	fmul f0, f0, f0
/* 8063BC98  FC 01 00 32 */	fmul f0, f1, f0
/* 8063BC9C  FC 03 00 28 */	fsub f0, f3, f0
/* 8063BCA0  FC 02 00 32 */	fmul f0, f2, f0
/* 8063BCA4  FC 21 00 32 */	fmul f1, f1, f0
/* 8063BCA8  FC 20 08 18 */	frsp f1, f1
/* 8063BCAC  48 00 00 88 */	b lbl_8063BD34
lbl_8063BCB0:
/* 8063BCB0  C8 1F 00 C8 */	lfd f0, 0xc8(r31)
/* 8063BCB4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8063BCB8  40 80 00 10 */	bge lbl_8063BCC8
/* 8063BCBC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8063BCC0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8063BCC4  48 00 00 70 */	b lbl_8063BD34
lbl_8063BCC8:
/* 8063BCC8  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8063BCCC  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8063BCD0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8063BCD4  3C 00 7F 80 */	lis r0, 0x7f80
/* 8063BCD8  7C 03 00 00 */	cmpw r3, r0
/* 8063BCDC  41 82 00 14 */	beq lbl_8063BCF0
/* 8063BCE0  40 80 00 40 */	bge lbl_8063BD20
/* 8063BCE4  2C 03 00 00 */	cmpwi r3, 0
/* 8063BCE8  41 82 00 20 */	beq lbl_8063BD08
/* 8063BCEC  48 00 00 34 */	b lbl_8063BD20
lbl_8063BCF0:
/* 8063BCF0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8063BCF4  41 82 00 0C */	beq lbl_8063BD00
/* 8063BCF8  38 00 00 01 */	li r0, 1
/* 8063BCFC  48 00 00 28 */	b lbl_8063BD24
lbl_8063BD00:
/* 8063BD00  38 00 00 02 */	li r0, 2
/* 8063BD04  48 00 00 20 */	b lbl_8063BD24
lbl_8063BD08:
/* 8063BD08  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8063BD0C  41 82 00 0C */	beq lbl_8063BD18
/* 8063BD10  38 00 00 05 */	li r0, 5
/* 8063BD14  48 00 00 10 */	b lbl_8063BD24
lbl_8063BD18:
/* 8063BD18  38 00 00 03 */	li r0, 3
/* 8063BD1C  48 00 00 08 */	b lbl_8063BD24
lbl_8063BD20:
/* 8063BD20  38 00 00 04 */	li r0, 4
lbl_8063BD24:
/* 8063BD24  2C 00 00 01 */	cmpwi r0, 1
/* 8063BD28  40 82 00 0C */	bne lbl_8063BD34
/* 8063BD2C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8063BD30  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8063BD34:
/* 8063BD34  C0 1F 00 DC */	lfs f0, 0xdc(r31)
/* 8063BD38  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8063BD3C  40 81 00 14 */	ble lbl_8063BD50
/* 8063BD40  7F A3 EB 78 */	mr r3, r29
/* 8063BD44  38 80 00 C8 */	li r4, 0xc8
/* 8063BD48  4B FF E8 E1 */	bl setWeight__9daB_YOI_cFUc
/* 8063BD4C  48 00 00 10 */	b lbl_8063BD5C
lbl_8063BD50:
/* 8063BD50  7F A3 EB 78 */	mr r3, r29
/* 8063BD54  38 80 00 FD */	li r4, 0xfd
/* 8063BD58  4B FF E8 D1 */	bl setWeight__9daB_YOI_cFUc
lbl_8063BD5C:
/* 8063BD5C  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 8063BD60  38 80 00 00 */	li r4, 0
/* 8063BD64  38 A0 00 40 */	li r5, 0x40
/* 8063BD68  4B C3 4E 28 */	b cLib_chaseAngleS__FPsss
/* 8063BD6C  38 7D 04 E8 */	addi r3, r29, 0x4e8
/* 8063BD70  38 80 00 00 */	li r4, 0
/* 8063BD74  38 A0 00 40 */	li r5, 0x40
/* 8063BD78  4B C3 4E 18 */	b cLib_chaseAngleS__FPsss
/* 8063BD7C  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8063BD80  4B C2 BC 0C */	b cM_rndFX__Ff
/* 8063BD84  FC 00 08 1E */	fctiwz f0, f1
/* 8063BD88  D8 01 00 98 */	stfd f0, 0x98(r1)
/* 8063BD8C  80 01 00 9C */	lwz r0, 0x9c(r1)
/* 8063BD90  B0 1D 06 78 */	sth r0, 0x678(r29)
/* 8063BD94  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 8063BD98  4B C2 BB F4 */	b cM_rndFX__Ff
/* 8063BD9C  FC 00 08 1E */	fctiwz f0, f1
/* 8063BDA0  D8 01 00 A0 */	stfd f0, 0xa0(r1)
/* 8063BDA4  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8063BDA8  B0 1D 06 7C */	sth r0, 0x67c(r29)
/* 8063BDAC  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 8063BDB0  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 8063BDB4  EC 01 00 2A */	fadds f0, f1, f0
/* 8063BDB8  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 8063BDBC  80 1D 06 A4 */	lwz r0, 0x6a4(r29)
/* 8063BDC0  2C 00 00 00 */	cmpwi r0, 0
/* 8063BDC4  40 82 06 0C */	bne lbl_8063C3D0
/* 8063BDC8  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702FB@ha */
/* 8063BDCC  38 03 02 FB */	addi r0, r3, 0x02FB /* 0x000702FB@l */
/* 8063BDD0  90 01 00 20 */	stw r0, 0x20(r1)
/* 8063BDD4  38 7D 06 48 */	addi r3, r29, 0x648
/* 8063BDD8  38 81 00 20 */	addi r4, r1, 0x20
/* 8063BDDC  38 A0 00 00 */	li r5, 0
/* 8063BDE0  38 C0 FF FF */	li r6, -1
/* 8063BDE4  81 9D 06 58 */	lwz r12, 0x658(r29)
/* 8063BDE8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8063BDEC  7D 89 03 A6 */	mtctr r12
/* 8063BDF0  4E 80 04 21 */	bctrl 
/* 8063BDF4  7F A3 EB 78 */	mr r3, r29
/* 8063BDF8  38 80 00 FD */	li r4, 0xfd
/* 8063BDFC  4B FF E8 2D */	bl setWeight__9daB_YOI_cFUc
/* 8063BE00  38 00 00 07 */	li r0, 7
/* 8063BE04  90 1D 06 98 */	stw r0, 0x698(r29)
/* 8063BE08  C0 1F 00 E0 */	lfs f0, 0xe0(r31)
/* 8063BE0C  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 8063BE10  38 00 00 00 */	li r0, 0
/* 8063BE14  B0 1D 06 7C */	sth r0, 0x67c(r29)
/* 8063BE18  B0 1D 06 78 */	sth r0, 0x678(r29)
/* 8063BE1C  4B C2 BA 50 */	b cM_rnd__Fv
/* 8063BE20  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 8063BE24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8063BE28  40 80 00 28 */	bge lbl_8063BE50
/* 8063BE2C  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 8063BE30  4B C2 BB 24 */	b cM_rndF__Ff
/* 8063BE34  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 8063BE38  EC 00 08 2A */	fadds f0, f0, f1
/* 8063BE3C  FC 00 00 1E */	fctiwz f0, f0
/* 8063BE40  D8 01 00 A0 */	stfd f0, 0xa0(r1)
/* 8063BE44  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8063BE48  B0 1D 06 9E */	sth r0, 0x69e(r29)
/* 8063BE4C  48 00 05 84 */	b lbl_8063C3D0
lbl_8063BE50:
/* 8063BE50  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 8063BE54  4B C2 BB 00 */	b cM_rndF__Ff
/* 8063BE58  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 8063BE5C  EC 00 08 2A */	fadds f0, f0, f1
/* 8063BE60  FC 00 00 1E */	fctiwz f0, f0
/* 8063BE64  D8 01 00 A0 */	stfd f0, 0xa0(r1)
/* 8063BE68  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8063BE6C  B0 1D 06 9E */	sth r0, 0x69e(r29)
/* 8063BE70  48 00 05 60 */	b lbl_8063C3D0
lbl_8063BE74:
/* 8063BE74  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702F7@ha */
/* 8063BE78  38 03 02 F7 */	addi r0, r3, 0x02F7 /* 0x000702F7@l */
/* 8063BE7C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8063BE80  38 7D 06 48 */	addi r3, r29, 0x648
/* 8063BE84  38 81 00 1C */	addi r4, r1, 0x1c
/* 8063BE88  38 A0 00 00 */	li r5, 0
/* 8063BE8C  38 C0 FF FF */	li r6, -1
/* 8063BE90  81 9D 06 58 */	lwz r12, 0x658(r29)
/* 8063BE94  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8063BE98  7D 89 03 A6 */	mtctr r12
/* 8063BE9C  4E 80 04 21 */	bctrl 
/* 8063BEA0  38 7D 06 9E */	addi r3, r29, 0x69e
/* 8063BEA4  38 80 00 00 */	li r4, 0
/* 8063BEA8  38 A0 00 40 */	li r5, 0x40
/* 8063BEAC  4B C3 4C E4 */	b cLib_chaseAngleS__FPsss
/* 8063BEB0  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 8063BEB4  A8 1D 06 9E */	lha r0, 0x69e(r29)
/* 8063BEB8  7C 03 02 14 */	add r0, r3, r0
/* 8063BEBC  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 8063BEC0  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 8063BEC4  38 80 00 00 */	li r4, 0
/* 8063BEC8  38 A0 00 40 */	li r5, 0x40
/* 8063BECC  4B C3 4C C4 */	b cLib_chaseAngleS__FPsss
/* 8063BED0  38 7D 04 E8 */	addi r3, r29, 0x4e8
/* 8063BED4  38 80 00 00 */	li r4, 0
/* 8063BED8  38 A0 00 40 */	li r5, 0x40
/* 8063BEDC  4B C3 4C B4 */	b cLib_chaseAngleS__FPsss
/* 8063BEE0  38 7D 04 FC */	addi r3, r29, 0x4fc
/* 8063BEE4  C0 3F 00 28 */	lfs f1, 0x28(r31)
/* 8063BEE8  FC 40 08 90 */	fmr f2, f1
/* 8063BEEC  4B C3 48 54 */	b cLib_chaseF__FPfff
/* 8063BEF0  2C 03 00 00 */	cmpwi r3, 0
/* 8063BEF4  41 82 04 DC */	beq lbl_8063C3D0
/* 8063BEF8  38 00 00 08 */	li r0, 8
/* 8063BEFC  90 1D 06 98 */	stw r0, 0x698(r29)
/* 8063BF00  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8063BF04  D0 1D 06 84 */	stfs f0, 0x684(r29)
/* 8063BF08  48 00 04 C8 */	b lbl_8063C3D0
lbl_8063BF0C:
/* 8063BF0C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702F7@ha */
/* 8063BF10  38 03 02 F7 */	addi r0, r3, 0x02F7 /* 0x000702F7@l */
/* 8063BF14  90 01 00 18 */	stw r0, 0x18(r1)
/* 8063BF18  38 7D 06 48 */	addi r3, r29, 0x648
/* 8063BF1C  38 81 00 18 */	addi r4, r1, 0x18
/* 8063BF20  38 A0 00 00 */	li r5, 0
/* 8063BF24  38 C0 FF FF */	li r6, -1
/* 8063BF28  81 9D 06 58 */	lwz r12, 0x658(r29)
/* 8063BF2C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8063BF30  7D 89 03 A6 */	mtctr r12
/* 8063BF34  4E 80 04 21 */	bctrl 
/* 8063BF38  38 7D 06 9E */	addi r3, r29, 0x69e
/* 8063BF3C  38 80 00 00 */	li r4, 0
/* 8063BF40  38 A0 00 40 */	li r5, 0x40
/* 8063BF44  4B C3 4C 4C */	b cLib_chaseAngleS__FPsss
/* 8063BF48  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 8063BF4C  A8 1D 06 9E */	lha r0, 0x69e(r29)
/* 8063BF50  7C 03 02 14 */	add r0, r3, r0
/* 8063BF54  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 8063BF58  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 8063BF5C  38 80 00 00 */	li r4, 0
/* 8063BF60  38 A0 00 40 */	li r5, 0x40
/* 8063BF64  4B C3 4C 2C */	b cLib_chaseAngleS__FPsss
/* 8063BF68  38 7D 04 E8 */	addi r3, r29, 0x4e8
/* 8063BF6C  38 80 00 00 */	li r4, 0
/* 8063BF70  38 A0 00 40 */	li r5, 0x40
/* 8063BF74  4B C3 4C 1C */	b cLib_chaseAngleS__FPsss
/* 8063BF78  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 8063BF7C  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 8063BF80  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8063BF84  40 80 00 18 */	bge lbl_8063BF9C
/* 8063BF88  38 7D 04 FC */	addi r3, r29, 0x4fc
/* 8063BF8C  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 8063BF90  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8063BF94  4B C3 47 AC */	b cLib_chaseF__FPfff
/* 8063BF98  48 00 00 14 */	b lbl_8063BFAC
lbl_8063BF9C:
/* 8063BF9C  38 7D 04 FC */	addi r3, r29, 0x4fc
/* 8063BFA0  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 8063BFA4  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 8063BFA8  4B C3 47 98 */	b cLib_chaseF__FPfff
lbl_8063BFAC:
/* 8063BFAC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8063BFB0  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8063BFB4  3B C3 00 04 */	addi r30, r3, 4
/* 8063BFB8  80 1D 06 8C */	lwz r0, 0x68c(r29)
/* 8063BFBC  1C 00 19 99 */	mulli r0, r0, 0x1999
/* 8063BFC0  7C 1C 02 14 */	add r0, r28, r0
/* 8063BFC4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8063BFC8  7C 9E 04 2E */	lfsx f4, r30, r0
/* 8063BFCC  C0 7D 04 D4 */	lfs f3, 0x4d4(r29)
/* 8063BFD0  7C 03 04 2E */	lfsx f0, r3, r0
/* 8063BFD4  C0 21 00 88 */	lfs f1, 0x88(r1)
/* 8063BFD8  EC 1F 00 32 */	fmuls f0, f31, f0
/* 8063BFDC  EC 41 00 2A */	fadds f2, f1, f0
/* 8063BFE0  D0 41 00 7C */	stfs f2, 0x7c(r1)
/* 8063BFE4  D0 61 00 80 */	stfs f3, 0x80(r1)
/* 8063BFE8  C0 21 00 90 */	lfs f1, 0x90(r1)
/* 8063BFEC  EC 1F 01 32 */	fmuls f0, f31, f4
/* 8063BFF0  EC 21 00 2A */	fadds f1, f1, f0
/* 8063BFF4  D0 21 00 84 */	stfs f1, 0x84(r1)
/* 8063BFF8  D0 41 00 58 */	stfs f2, 0x58(r1)
/* 8063BFFC  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8063C000  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8063C004  D0 21 00 60 */	stfs f1, 0x60(r1)
/* 8063C008  38 61 00 58 */	addi r3, r1, 0x58
/* 8063C00C  4B D0 B1 2C */	b PSVECSquareMag
/* 8063C010  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8063C014  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8063C018  40 81 00 58 */	ble lbl_8063C070
/* 8063C01C  FC 00 08 34 */	frsqrte f0, f1
/* 8063C020  C8 9F 00 B8 */	lfd f4, 0xb8(r31)
/* 8063C024  FC 44 00 32 */	fmul f2, f4, f0
/* 8063C028  C8 7F 00 C0 */	lfd f3, 0xc0(r31)
/* 8063C02C  FC 00 00 32 */	fmul f0, f0, f0
/* 8063C030  FC 01 00 32 */	fmul f0, f1, f0
/* 8063C034  FC 03 00 28 */	fsub f0, f3, f0
/* 8063C038  FC 02 00 32 */	fmul f0, f2, f0
/* 8063C03C  FC 44 00 32 */	fmul f2, f4, f0
/* 8063C040  FC 00 00 32 */	fmul f0, f0, f0
/* 8063C044  FC 01 00 32 */	fmul f0, f1, f0
/* 8063C048  FC 03 00 28 */	fsub f0, f3, f0
/* 8063C04C  FC 02 00 32 */	fmul f0, f2, f0
/* 8063C050  FC 44 00 32 */	fmul f2, f4, f0
/* 8063C054  FC 00 00 32 */	fmul f0, f0, f0
/* 8063C058  FC 01 00 32 */	fmul f0, f1, f0
/* 8063C05C  FC 03 00 28 */	fsub f0, f3, f0
/* 8063C060  FC 02 00 32 */	fmul f0, f2, f0
/* 8063C064  FC 21 00 32 */	fmul f1, f1, f0
/* 8063C068  FC 20 08 18 */	frsp f1, f1
/* 8063C06C  48 00 00 88 */	b lbl_8063C0F4
lbl_8063C070:
/* 8063C070  C8 1F 00 C8 */	lfd f0, 0xc8(r31)
/* 8063C074  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8063C078  40 80 00 10 */	bge lbl_8063C088
/* 8063C07C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8063C080  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8063C084  48 00 00 70 */	b lbl_8063C0F4
lbl_8063C088:
/* 8063C088  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8063C08C  80 81 00 10 */	lwz r4, 0x10(r1)
/* 8063C090  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8063C094  3C 00 7F 80 */	lis r0, 0x7f80
/* 8063C098  7C 03 00 00 */	cmpw r3, r0
/* 8063C09C  41 82 00 14 */	beq lbl_8063C0B0
/* 8063C0A0  40 80 00 40 */	bge lbl_8063C0E0
/* 8063C0A4  2C 03 00 00 */	cmpwi r3, 0
/* 8063C0A8  41 82 00 20 */	beq lbl_8063C0C8
/* 8063C0AC  48 00 00 34 */	b lbl_8063C0E0
lbl_8063C0B0:
/* 8063C0B0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8063C0B4  41 82 00 0C */	beq lbl_8063C0C0
/* 8063C0B8  38 00 00 01 */	li r0, 1
/* 8063C0BC  48 00 00 28 */	b lbl_8063C0E4
lbl_8063C0C0:
/* 8063C0C0  38 00 00 02 */	li r0, 2
/* 8063C0C4  48 00 00 20 */	b lbl_8063C0E4
lbl_8063C0C8:
/* 8063C0C8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8063C0CC  41 82 00 0C */	beq lbl_8063C0D8
/* 8063C0D0  38 00 00 05 */	li r0, 5
/* 8063C0D4  48 00 00 10 */	b lbl_8063C0E4
lbl_8063C0D8:
/* 8063C0D8  38 00 00 03 */	li r0, 3
/* 8063C0DC  48 00 00 08 */	b lbl_8063C0E4
lbl_8063C0E0:
/* 8063C0E0  38 00 00 04 */	li r0, 4
lbl_8063C0E4:
/* 8063C0E4  2C 00 00 01 */	cmpwi r0, 1
/* 8063C0E8  40 82 00 0C */	bne lbl_8063C0F4
/* 8063C0EC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8063C0F0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8063C0F4:
/* 8063C0F4  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 8063C0F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8063C0FC  40 81 00 38 */	ble lbl_8063C134
/* 8063C100  C0 21 00 7C */	lfs f1, 0x7c(r1)
/* 8063C104  C0 41 00 84 */	lfs f2, 0x84(r1)
/* 8063C108  4B C2 B5 6C */	b cM_atan2s__Fff
/* 8063C10C  C0 3F 00 E4 */	lfs f1, 0xe4(r31)
/* 8063C110  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 8063C114  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8063C118  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8063C11C  7C 03 04 2E */	lfsx f0, r3, r0
/* 8063C120  EC 01 00 32 */	fmuls f0, f1, f0
/* 8063C124  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8063C128  7C 1E 04 2E */	lfsx f0, r30, r0
/* 8063C12C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8063C130  D0 01 00 84 */	stfs f0, 0x84(r1)
lbl_8063C134:
/* 8063C134  38 7D 06 84 */	addi r3, r29, 0x684
/* 8063C138  C0 3F 00 E8 */	lfs f1, 0xe8(r31)
/* 8063C13C  C0 5F 00 00 */	lfs f2, 0(r31)
/* 8063C140  4B C3 46 00 */	b cLib_chaseF__FPfff
/* 8063C144  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8063C148  38 81 00 7C */	addi r4, r1, 0x7c
/* 8063C14C  C0 3F 00 5C */	lfs f1, 0x5c(r31)
/* 8063C150  C0 5D 06 84 */	lfs f2, 0x684(r29)
/* 8063C154  4B C3 41 FC */	b cLib_addCalcPosXZ2__FP4cXyzRC4cXyzff
/* 8063C158  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 8063C15C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8063C160  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8063C164  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 8063C168  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 8063C16C  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 8063C170  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 8063C174  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8063C178  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 8063C17C  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 8063C180  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8063C184  38 61 00 40 */	addi r3, r1, 0x40
/* 8063C188  38 81 00 4C */	addi r4, r1, 0x4c
/* 8063C18C  4B D0 B2 10 */	b PSVECSquareDistance
/* 8063C190  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8063C194  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8063C198  40 81 00 58 */	ble lbl_8063C1F0
/* 8063C19C  FC 00 08 34 */	frsqrte f0, f1
/* 8063C1A0  C8 9F 00 B8 */	lfd f4, 0xb8(r31)
/* 8063C1A4  FC 44 00 32 */	fmul f2, f4, f0
/* 8063C1A8  C8 7F 00 C0 */	lfd f3, 0xc0(r31)
/* 8063C1AC  FC 00 00 32 */	fmul f0, f0, f0
/* 8063C1B0  FC 01 00 32 */	fmul f0, f1, f0
/* 8063C1B4  FC 03 00 28 */	fsub f0, f3, f0
/* 8063C1B8  FC 02 00 32 */	fmul f0, f2, f0
/* 8063C1BC  FC 44 00 32 */	fmul f2, f4, f0
/* 8063C1C0  FC 00 00 32 */	fmul f0, f0, f0
/* 8063C1C4  FC 01 00 32 */	fmul f0, f1, f0
/* 8063C1C8  FC 03 00 28 */	fsub f0, f3, f0
/* 8063C1CC  FC 02 00 32 */	fmul f0, f2, f0
/* 8063C1D0  FC 44 00 32 */	fmul f2, f4, f0
/* 8063C1D4  FC 00 00 32 */	fmul f0, f0, f0
/* 8063C1D8  FC 01 00 32 */	fmul f0, f1, f0
/* 8063C1DC  FC 03 00 28 */	fsub f0, f3, f0
/* 8063C1E0  FC 02 00 32 */	fmul f0, f2, f0
/* 8063C1E4  FC 21 00 32 */	fmul f1, f1, f0
/* 8063C1E8  FC 20 08 18 */	frsp f1, f1
/* 8063C1EC  48 00 00 88 */	b lbl_8063C274
lbl_8063C1F0:
/* 8063C1F0  C8 1F 00 C8 */	lfd f0, 0xc8(r31)
/* 8063C1F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8063C1F8  40 80 00 10 */	bge lbl_8063C208
/* 8063C1FC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8063C200  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8063C204  48 00 00 70 */	b lbl_8063C274
lbl_8063C208:
/* 8063C208  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8063C20C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8063C210  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8063C214  3C 00 7F 80 */	lis r0, 0x7f80
/* 8063C218  7C 03 00 00 */	cmpw r3, r0
/* 8063C21C  41 82 00 14 */	beq lbl_8063C230
/* 8063C220  40 80 00 40 */	bge lbl_8063C260
/* 8063C224  2C 03 00 00 */	cmpwi r3, 0
/* 8063C228  41 82 00 20 */	beq lbl_8063C248
/* 8063C22C  48 00 00 34 */	b lbl_8063C260
lbl_8063C230:
/* 8063C230  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8063C234  41 82 00 0C */	beq lbl_8063C240
/* 8063C238  38 00 00 01 */	li r0, 1
/* 8063C23C  48 00 00 28 */	b lbl_8063C264
lbl_8063C240:
/* 8063C240  38 00 00 02 */	li r0, 2
/* 8063C244  48 00 00 20 */	b lbl_8063C264
lbl_8063C248:
/* 8063C248  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8063C24C  41 82 00 0C */	beq lbl_8063C258
/* 8063C250  38 00 00 05 */	li r0, 5
/* 8063C254  48 00 00 10 */	b lbl_8063C264
lbl_8063C258:
/* 8063C258  38 00 00 03 */	li r0, 3
/* 8063C25C  48 00 00 08 */	b lbl_8063C264
lbl_8063C260:
/* 8063C260  38 00 00 04 */	li r0, 4
lbl_8063C264:
/* 8063C264  2C 00 00 01 */	cmpwi r0, 1
/* 8063C268  40 82 00 0C */	bne lbl_8063C274
/* 8063C26C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8063C270  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8063C274:
/* 8063C274  C0 1F 00 08 */	lfs f0, 8(r31)
/* 8063C278  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8063C27C  40 80 01 54 */	bge lbl_8063C3D0
/* 8063C280  80 BD 06 68 */	lwz r5, 0x668(r29)
/* 8063C284  A0 85 0F 6C */	lhz r4, 0xf6c(r5)
/* 8063C288  38 60 00 01 */	li r3, 1
/* 8063C28C  80 1D 06 8C */	lwz r0, 0x68c(r29)
/* 8063C290  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8063C294  7C 60 00 30 */	slw r0, r3, r0
/* 8063C298  7C 80 03 78 */	or r0, r4, r0
/* 8063C29C  B0 05 0F 6C */	sth r0, 0xf6c(r5)
/* 8063C2A0  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 8063C2A4  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8063C2A8  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8063C2AC  C0 3F 00 14 */	lfs f1, 0x14(r31)
/* 8063C2B0  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8063C2B4  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 8063C2B8  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 8063C2BC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8063C2C0  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 8063C2C4  C0 01 00 84 */	lfs f0, 0x84(r1)
/* 8063C2C8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8063C2CC  38 61 00 28 */	addi r3, r1, 0x28
/* 8063C2D0  38 81 00 34 */	addi r4, r1, 0x34
/* 8063C2D4  4B D0 B0 C8 */	b PSVECSquareDistance
/* 8063C2D8  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8063C2DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8063C2E0  40 81 00 58 */	ble lbl_8063C338
/* 8063C2E4  FC 00 08 34 */	frsqrte f0, f1
/* 8063C2E8  C8 9F 00 B8 */	lfd f4, 0xb8(r31)
/* 8063C2EC  FC 44 00 32 */	fmul f2, f4, f0
/* 8063C2F0  C8 7F 00 C0 */	lfd f3, 0xc0(r31)
/* 8063C2F4  FC 00 00 32 */	fmul f0, f0, f0
/* 8063C2F8  FC 01 00 32 */	fmul f0, f1, f0
/* 8063C2FC  FC 03 00 28 */	fsub f0, f3, f0
/* 8063C300  FC 02 00 32 */	fmul f0, f2, f0
/* 8063C304  FC 44 00 32 */	fmul f2, f4, f0
/* 8063C308  FC 00 00 32 */	fmul f0, f0, f0
/* 8063C30C  FC 01 00 32 */	fmul f0, f1, f0
/* 8063C310  FC 03 00 28 */	fsub f0, f3, f0
/* 8063C314  FC 02 00 32 */	fmul f0, f2, f0
/* 8063C318  FC 44 00 32 */	fmul f2, f4, f0
/* 8063C31C  FC 00 00 32 */	fmul f0, f0, f0
/* 8063C320  FC 01 00 32 */	fmul f0, f1, f0
/* 8063C324  FC 03 00 28 */	fsub f0, f3, f0
/* 8063C328  FC 02 00 32 */	fmul f0, f2, f0
/* 8063C32C  FC 21 00 32 */	fmul f1, f1, f0
/* 8063C330  FC 20 08 18 */	frsp f1, f1
/* 8063C334  48 00 00 88 */	b lbl_8063C3BC
lbl_8063C338:
/* 8063C338  C8 1F 00 C8 */	lfd f0, 0xc8(r31)
/* 8063C33C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8063C340  40 80 00 10 */	bge lbl_8063C350
/* 8063C344  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8063C348  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8063C34C  48 00 00 70 */	b lbl_8063C3BC
lbl_8063C350:
/* 8063C350  D0 21 00 08 */	stfs f1, 8(r1)
/* 8063C354  80 81 00 08 */	lwz r4, 8(r1)
/* 8063C358  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8063C35C  3C 00 7F 80 */	lis r0, 0x7f80
/* 8063C360  7C 03 00 00 */	cmpw r3, r0
/* 8063C364  41 82 00 14 */	beq lbl_8063C378
/* 8063C368  40 80 00 40 */	bge lbl_8063C3A8
/* 8063C36C  2C 03 00 00 */	cmpwi r3, 0
/* 8063C370  41 82 00 20 */	beq lbl_8063C390
/* 8063C374  48 00 00 34 */	b lbl_8063C3A8
lbl_8063C378:
/* 8063C378  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8063C37C  41 82 00 0C */	beq lbl_8063C388
/* 8063C380  38 00 00 01 */	li r0, 1
/* 8063C384  48 00 00 28 */	b lbl_8063C3AC
lbl_8063C388:
/* 8063C388  38 00 00 02 */	li r0, 2
/* 8063C38C  48 00 00 20 */	b lbl_8063C3AC
lbl_8063C390:
/* 8063C390  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8063C394  41 82 00 0C */	beq lbl_8063C3A0
/* 8063C398  38 00 00 05 */	li r0, 5
/* 8063C39C  48 00 00 10 */	b lbl_8063C3AC
lbl_8063C3A0:
/* 8063C3A0  38 00 00 03 */	li r0, 3
/* 8063C3A4  48 00 00 08 */	b lbl_8063C3AC
lbl_8063C3A8:
/* 8063C3A8  38 00 00 04 */	li r0, 4
lbl_8063C3AC:
/* 8063C3AC  2C 00 00 01 */	cmpwi r0, 1
/* 8063C3B0  40 82 00 0C */	bne lbl_8063C3BC
/* 8063C3B4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8063C3B8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8063C3BC:
/* 8063C3BC  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8063C3C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8063C3C4  40 80 00 0C */	bge lbl_8063C3D0
/* 8063C3C8  38 00 00 09 */	li r0, 9
/* 8063C3CC  90 1D 06 98 */	stw r0, 0x698(r29)
lbl_8063C3D0:
/* 8063C3D0  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, 0 /* qr0 */
/* 8063C3D4  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 8063C3D8  39 61 00 C0 */	addi r11, r1, 0xc0
/* 8063C3DC  4B D2 5E 48 */	b _restgpr_28
/* 8063C3E0  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 8063C3E4  7C 08 03 A6 */	mtlr r0
/* 8063C3E8  38 21 00 D0 */	addi r1, r1, 0xd0
/* 8063C3EC  4E 80 00 20 */	blr 
