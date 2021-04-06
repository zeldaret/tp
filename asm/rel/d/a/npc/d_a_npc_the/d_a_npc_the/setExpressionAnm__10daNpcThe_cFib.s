lbl_80AF8160:
/* 80AF8160  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AF8164  7C 08 02 A6 */	mflr r0
/* 80AF8168  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AF816C  39 61 00 20 */	addi r11, r1, 0x20
/* 80AF8170  4B 86 A0 65 */	bl _savegpr_27
/* 80AF8174  7C 7F 1B 78 */	mr r31, r3
/* 80AF8178  7C 9B 23 78 */	mr r27, r4
/* 80AF817C  7C BD 2B 78 */	mr r29, r5
/* 80AF8180  3B C0 00 00 */	li r30, 0
/* 80AF8184  3B 80 00 00 */	li r28, 0
/* 80AF8188  80 03 09 9C */	lwz r0, 0x99c(r3)
/* 80AF818C  54 00 06 A4 */	rlwinm r0, r0, 0, 0x1a, 0x12
/* 80AF8190  90 03 09 9C */	stw r0, 0x99c(r3)
/* 80AF8194  54 80 18 38 */	slwi r0, r4, 3
/* 80AF8198  3C 80 80 B0 */	lis r4, l_bckGetParamList@ha /* 0x80AFC200@ha */
/* 80AF819C  38 84 C2 00 */	addi r4, r4, l_bckGetParamList@l /* 0x80AFC200@l */
/* 80AF81A0  7C A4 00 2E */	lwzx r5, r4, r0
/* 80AF81A4  2C 05 00 00 */	cmpwi r5, 0
/* 80AF81A8  41 80 00 24 */	blt lbl_80AF81CC
/* 80AF81AC  7C 84 02 14 */	add r4, r4, r0
/* 80AF81B0  80 04 00 04 */	lwz r0, 4(r4)
/* 80AF81B4  54 00 10 3A */	slwi r0, r0, 2
/* 80AF81B8  3C 80 80 B0 */	lis r4, l_resNames@ha /* 0x80AFC380@ha */
/* 80AF81BC  38 84 C3 80 */	addi r4, r4, l_resNames@l /* 0x80AFC380@l */
/* 80AF81C0  7C 84 00 2E */	lwzx r4, r4, r0
/* 80AF81C4  4B 65 A9 69 */	bl getTrnsfrmKeyAnmP__8daNpcF_cFPci
/* 80AF81C8  7C 7E 1B 78 */	mr r30, r3
lbl_80AF81CC:
/* 80AF81CC  38 60 00 00 */	li r3, 0
/* 80AF81D0  28 1B 00 0D */	cmplwi r27, 0xd
/* 80AF81D4  41 81 01 C0 */	bgt lbl_80AF8394
/* 80AF81D8  3C 80 80 B0 */	lis r4, lit_4407@ha /* 0x80AFC424@ha */
/* 80AF81DC  38 84 C4 24 */	addi r4, r4, lit_4407@l /* 0x80AFC424@l */
/* 80AF81E0  57 60 10 3A */	slwi r0, r27, 2
/* 80AF81E4  7C 04 00 2E */	lwzx r0, r4, r0
/* 80AF81E8  7C 09 03 A6 */	mtctr r0
/* 80AF81EC  4E 80 04 20 */	bctr 
lbl_80AF81F0:
/* 80AF81F0  7F E3 FB 78 */	mr r3, r31
/* 80AF81F4  38 80 00 00 */	li r4, 0
/* 80AF81F8  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80AF81FC  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80AF8200  7D 89 03 A6 */	mtctr r12
/* 80AF8204  4E 80 04 21 */	bctrl 
/* 80AF8208  48 00 01 90 */	b lbl_80AF8398
lbl_80AF820C:
/* 80AF820C  7F E3 FB 78 */	mr r3, r31
/* 80AF8210  38 80 00 01 */	li r4, 1
/* 80AF8214  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80AF8218  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80AF821C  7D 89 03 A6 */	mtctr r12
/* 80AF8220  4E 80 04 21 */	bctrl 
/* 80AF8224  48 00 01 74 */	b lbl_80AF8398
lbl_80AF8228:
/* 80AF8228  7F E3 FB 78 */	mr r3, r31
/* 80AF822C  38 80 00 02 */	li r4, 2
/* 80AF8230  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80AF8234  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80AF8238  7D 89 03 A6 */	mtctr r12
/* 80AF823C  4E 80 04 21 */	bctrl 
/* 80AF8240  48 00 01 58 */	b lbl_80AF8398
lbl_80AF8244:
/* 80AF8244  7F E3 FB 78 */	mr r3, r31
/* 80AF8248  38 80 00 03 */	li r4, 3
/* 80AF824C  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80AF8250  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80AF8254  7D 89 03 A6 */	mtctr r12
/* 80AF8258  4E 80 04 21 */	bctrl 
/* 80AF825C  48 00 01 3C */	b lbl_80AF8398
lbl_80AF8260:
/* 80AF8260  7F E3 FB 78 */	mr r3, r31
/* 80AF8264  38 80 00 04 */	li r4, 4
/* 80AF8268  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80AF826C  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80AF8270  7D 89 03 A6 */	mtctr r12
/* 80AF8274  4E 80 04 21 */	bctrl 
/* 80AF8278  3B 80 00 02 */	li r28, 2
/* 80AF827C  48 00 01 1C */	b lbl_80AF8398
lbl_80AF8280:
/* 80AF8280  7F E3 FB 78 */	mr r3, r31
/* 80AF8284  38 80 00 05 */	li r4, 5
/* 80AF8288  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80AF828C  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80AF8290  7D 89 03 A6 */	mtctr r12
/* 80AF8294  4E 80 04 21 */	bctrl 
/* 80AF8298  48 00 01 00 */	b lbl_80AF8398
lbl_80AF829C:
/* 80AF829C  7F E3 FB 78 */	mr r3, r31
/* 80AF82A0  38 80 00 06 */	li r4, 6
/* 80AF82A4  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80AF82A8  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80AF82AC  7D 89 03 A6 */	mtctr r12
/* 80AF82B0  4E 80 04 21 */	bctrl 
/* 80AF82B4  48 00 00 E4 */	b lbl_80AF8398
lbl_80AF82B8:
/* 80AF82B8  7F E3 FB 78 */	mr r3, r31
/* 80AF82BC  38 80 00 07 */	li r4, 7
/* 80AF82C0  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80AF82C4  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80AF82C8  7D 89 03 A6 */	mtctr r12
/* 80AF82CC  4E 80 04 21 */	bctrl 
/* 80AF82D0  48 00 00 C8 */	b lbl_80AF8398
lbl_80AF82D4:
/* 80AF82D4  7F E3 FB 78 */	mr r3, r31
/* 80AF82D8  38 80 00 08 */	li r4, 8
/* 80AF82DC  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80AF82E0  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80AF82E4  7D 89 03 A6 */	mtctr r12
/* 80AF82E8  4E 80 04 21 */	bctrl 
/* 80AF82EC  3B 80 00 02 */	li r28, 2
/* 80AF82F0  48 00 00 A8 */	b lbl_80AF8398
lbl_80AF82F4:
/* 80AF82F4  7F E3 FB 78 */	mr r3, r31
/* 80AF82F8  38 80 00 09 */	li r4, 9
/* 80AF82FC  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80AF8300  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80AF8304  7D 89 03 A6 */	mtctr r12
/* 80AF8308  4E 80 04 21 */	bctrl 
/* 80AF830C  3B 80 00 02 */	li r28, 2
/* 80AF8310  48 00 00 88 */	b lbl_80AF8398
lbl_80AF8314:
/* 80AF8314  7F E3 FB 78 */	mr r3, r31
/* 80AF8318  38 80 00 0A */	li r4, 0xa
/* 80AF831C  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80AF8320  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80AF8324  7D 89 03 A6 */	mtctr r12
/* 80AF8328  4E 80 04 21 */	bctrl 
/* 80AF832C  3B 80 00 02 */	li r28, 2
/* 80AF8330  48 00 00 68 */	b lbl_80AF8398
lbl_80AF8334:
/* 80AF8334  7F E3 FB 78 */	mr r3, r31
/* 80AF8338  38 80 00 0B */	li r4, 0xb
/* 80AF833C  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80AF8340  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80AF8344  7D 89 03 A6 */	mtctr r12
/* 80AF8348  4E 80 04 21 */	bctrl 
/* 80AF834C  3B 80 00 02 */	li r28, 2
/* 80AF8350  48 00 00 48 */	b lbl_80AF8398
lbl_80AF8354:
/* 80AF8354  7F E3 FB 78 */	mr r3, r31
/* 80AF8358  38 80 00 0C */	li r4, 0xc
/* 80AF835C  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80AF8360  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80AF8364  7D 89 03 A6 */	mtctr r12
/* 80AF8368  4E 80 04 21 */	bctrl 
/* 80AF836C  3B 80 00 02 */	li r28, 2
/* 80AF8370  48 00 00 28 */	b lbl_80AF8398
lbl_80AF8374:
/* 80AF8374  7F E3 FB 78 */	mr r3, r31
/* 80AF8378  38 80 00 0D */	li r4, 0xd
/* 80AF837C  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80AF8380  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 80AF8384  7D 89 03 A6 */	mtctr r12
/* 80AF8388  4E 80 04 21 */	bctrl 
/* 80AF838C  3B 80 00 02 */	li r28, 2
/* 80AF8390  48 00 00 08 */	b lbl_80AF8398
lbl_80AF8394:
/* 80AF8394  3B C0 00 00 */	li r30, 0
lbl_80AF8398:
/* 80AF8398  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80AF839C  40 82 00 0C */	bne lbl_80AF83A8
/* 80AF83A0  38 60 00 00 */	li r3, 0
/* 80AF83A4  48 00 00 60 */	b lbl_80AF8404
lbl_80AF83A8:
/* 80AF83A8  28 1E 00 00 */	cmplwi r30, 0
/* 80AF83AC  40 82 00 0C */	bne lbl_80AF83B8
/* 80AF83B0  38 60 00 01 */	li r3, 1
/* 80AF83B4  48 00 00 50 */	b lbl_80AF8404
lbl_80AF83B8:
/* 80AF83B8  7F E3 FB 78 */	mr r3, r31
/* 80AF83BC  7F C4 F3 78 */	mr r4, r30
/* 80AF83C0  3C A0 80 B0 */	lis r5, lit_4296@ha /* 0x80AFBE84@ha */
/* 80AF83C4  C0 25 BE 84 */	lfs f1, lit_4296@l(r5)  /* 0x80AFBE84@l */
/* 80AF83C8  7F 85 E3 78 */	mr r5, r28
/* 80AF83CC  38 C0 00 00 */	li r6, 0
/* 80AF83D0  38 E0 FF FF */	li r7, -1
/* 80AF83D4  7F A8 EB 78 */	mr r8, r29
/* 80AF83D8  4B 65 A8 A9 */	bl setBckAnm__8daNpcF_cFP15J3DAnmTransformfiiib
/* 80AF83DC  2C 03 00 00 */	cmpwi r3, 0
/* 80AF83E0  41 82 00 20 */	beq lbl_80AF8400
/* 80AF83E4  80 1F 09 9C */	lwz r0, 0x99c(r31)
/* 80AF83E8  60 00 01 40 */	ori r0, r0, 0x140
/* 80AF83EC  90 1F 09 9C */	stw r0, 0x99c(r31)
/* 80AF83F0  38 00 00 00 */	li r0, 0
/* 80AF83F4  B0 1F 09 E4 */	sth r0, 0x9e4(r31)
/* 80AF83F8  38 60 00 01 */	li r3, 1
/* 80AF83FC  48 00 00 08 */	b lbl_80AF8404
lbl_80AF8400:
/* 80AF8400  38 60 00 00 */	li r3, 0
lbl_80AF8404:
/* 80AF8404  39 61 00 20 */	addi r11, r1, 0x20
/* 80AF8408  4B 86 9E 19 */	bl _restgpr_27
/* 80AF840C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AF8410  7C 08 03 A6 */	mtlr r0
/* 80AF8414  38 21 00 20 */	addi r1, r1, 0x20
/* 80AF8418  4E 80 00 20 */	blr 
