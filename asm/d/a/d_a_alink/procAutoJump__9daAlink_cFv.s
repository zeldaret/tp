lbl_800C61EC:
/* 800C61EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800C61F0  7C 08 02 A6 */	mflr r0
/* 800C61F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 800C61F8  39 61 00 20 */	addi r11, r1, 0x20
/* 800C61FC  48 29 BF D9 */	bl _savegpr_27
/* 800C6200  7C 7E 1B 78 */	mr r30, r3
/* 800C6204  A8 63 04 DE */	lha r3, 0x4de(r3)
/* 800C6208  A8 1E 2F E2 */	lha r0, 0x2fe2(r30)
/* 800C620C  7C 03 00 50 */	subf r0, r3, r0
/* 800C6210  7C 03 07 34 */	extsh r3, r0
/* 800C6214  4B FE D2 81 */	bl getDirectionFromAngle__9daAlink_cFs
/* 800C6218  7C 7F 1B 78 */	mr r31, r3
/* 800C621C  C0 3E 33 AC */	lfs f1, 0x33ac(r30)
/* 800C6220  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800C6224  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800C6228  40 81 00 28 */	ble lbl_800C6250
/* 800C622C  2C 1F 00 01 */	cmpwi r31, 1
/* 800C6230  40 82 00 20 */	bne lbl_800C6250
/* 800C6234  38 7E 33 98 */	addi r3, r30, 0x3398
/* 800C6238  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800C623C  C0 42 93 F8 */	lfs f2, lit_13700(r2)
/* 800C6240  C0 1E 33 A8 */	lfs f0, 0x33a8(r30)
/* 800C6244  EC 42 00 32 */	fmuls f2, f2, f0
/* 800C6248  48 1A A4 F9 */	bl cLib_chaseF__FPfff
/* 800C624C  48 00 00 48 */	b lbl_800C6294
lbl_800C6250:
/* 800C6250  7F C3 F3 78 */	mr r3, r30
/* 800C6254  48 01 DC CD */	bl checkGrabRooster__9daAlink_cFv
/* 800C6258  2C 03 00 00 */	cmpwi r3, 0
/* 800C625C  41 82 00 18 */	beq lbl_800C6274
/* 800C6260  38 7E 33 98 */	addi r3, r30, 0x3398
/* 800C6264  C0 3E 05 94 */	lfs f1, 0x594(r30)
/* 800C6268  C0 42 93 A0 */	lfs f2, lit_9054(r2)
/* 800C626C  48 1A A4 D5 */	bl cLib_chaseF__FPfff
/* 800C6270  48 00 00 24 */	b lbl_800C6294
lbl_800C6274:
/* 800C6274  C0 3E 33 AC */	lfs f1, 0x33ac(r30)
/* 800C6278  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800C627C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800C6280  41 81 00 14 */	bgt lbl_800C6294
/* 800C6284  38 7E 33 98 */	addi r3, r30, 0x3398
/* 800C6288  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800C628C  C0 42 93 A0 */	lfs f2, lit_9054(r2)
/* 800C6290  48 1A A4 B1 */	bl cLib_chaseF__FPfff
lbl_800C6294:
/* 800C6294  A8 7E 30 08 */	lha r3, 0x3008(r30)
/* 800C6298  2C 03 00 00 */	cmpwi r3, 0
/* 800C629C  41 82 00 10 */	beq lbl_800C62AC
/* 800C62A0  38 03 FF FF */	addi r0, r3, -1
/* 800C62A4  B0 1E 30 08 */	sth r0, 0x3008(r30)
/* 800C62A8  48 00 00 10 */	b lbl_800C62B8
lbl_800C62AC:
/* 800C62AC  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 800C62B0  54 00 04 E2 */	rlwinm r0, r0, 0, 0x13, 0x11
/* 800C62B4  90 1E 31 A0 */	stw r0, 0x31a0(r30)
lbl_800C62B8:
/* 800C62B8  7F C3 F3 78 */	mr r3, r30
/* 800C62BC  4B FE F9 79 */	bl setLandPassiveData__9daAlink_cFv
/* 800C62C0  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 800C62C4  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 800C62C8  40 82 00 24 */	bne lbl_800C62EC
/* 800C62CC  7F C3 F3 78 */	mr r3, r30
/* 800C62D0  38 80 00 45 */	li r4, 0x45
/* 800C62D4  4B FF 9E 91 */	bl checkSetItemTrigger__9daAlink_cFi
/* 800C62D8  2C 03 00 00 */	cmpwi r3, 0
/* 800C62DC  41 82 00 10 */	beq lbl_800C62EC
/* 800C62E0  7F C3 F3 78 */	mr r3, r30
/* 800C62E4  38 80 00 01 */	li r4, 1
/* 800C62E8  48 01 C2 99 */	bl setHeavyBoots__9daAlink_cFi
lbl_800C62EC:
/* 800C62EC  7F C3 F3 78 */	mr r3, r30
/* 800C62F0  4B FF 11 C5 */	bl checkUpperItemActionFly__9daAlink_cFv
/* 800C62F4  2C 03 00 00 */	cmpwi r3, 0
/* 800C62F8  41 82 00 0C */	beq lbl_800C6304
/* 800C62FC  38 60 00 01 */	li r3, 1
/* 800C6300  48 00 03 C4 */	b lbl_800C66C4
lbl_800C6304:
/* 800C6304  80 1E 19 9C */	lwz r0, 0x199c(r30)
/* 800C6308  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 800C630C  41 82 00 14 */	beq lbl_800C6320
/* 800C6310  7F C3 F3 78 */	mr r3, r30
/* 800C6314  38 80 00 00 */	li r4, 0
/* 800C6318  4B FE F9 B5 */	bl checkLandAction__9daAlink_cFi
/* 800C631C  48 00 03 A8 */	b lbl_800C66C4
lbl_800C6320:
/* 800C6320  7F C3 F3 78 */	mr r3, r30
/* 800C6324  48 01 D9 49 */	bl checkGrabAnime__9daAlink_cCFv
/* 800C6328  2C 03 00 00 */	cmpwi r3, 0
/* 800C632C  40 82 00 84 */	bne lbl_800C63B0
/* 800C6330  3B 9E 08 50 */	addi r28, r30, 0x850
/* 800C6334  3B 60 00 00 */	li r27, 0
lbl_800C6338:
/* 800C6338  38 7C 00 E8 */	addi r3, r28, 0xe8
/* 800C633C  4B FB D3 4D */	bl GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 800C6340  7C 7D 1B 78 */	mr r29, r3
/* 800C6344  7F 83 E3 78 */	mr r3, r28
/* 800C6348  4B FB E3 11 */	bl ChkCoHit__12dCcD_GObjInfFv
/* 800C634C  28 03 00 00 */	cmplwi r3, 0
/* 800C6350  41 82 00 28 */	beq lbl_800C6378
/* 800C6354  28 1D 00 00 */	cmplwi r29, 0
/* 800C6358  41 82 00 20 */	beq lbl_800C6378
/* 800C635C  A8 1D 00 08 */	lha r0, 8(r29)
/* 800C6360  2C 00 00 C4 */	cmpwi r0, 0xc4
/* 800C6364  40 82 00 14 */	bne lbl_800C6378
/* 800C6368  7F C3 F3 78 */	mr r3, r30
/* 800C636C  7F A4 EB 78 */	mr r4, r29
/* 800C6370  48 03 B3 3D */	bl procRoofSwitchHangInit__9daAlink_cFP10fopAc_ac_c
/* 800C6374  48 00 03 50 */	b lbl_800C66C4
lbl_800C6378:
/* 800C6378  3B 7B 00 01 */	addi r27, r27, 1
/* 800C637C  2C 1B 00 03 */	cmpwi r27, 3
/* 800C6380  3B 9C 01 3C */	addi r28, r28, 0x13c
/* 800C6384  41 80 FF B4 */	blt lbl_800C6338
/* 800C6388  7F C3 F3 78 */	mr r3, r30
/* 800C638C  4B FF 06 A5 */	bl checkFrontWallTypeAction__9daAlink_cFv
/* 800C6390  2C 03 00 00 */	cmpwi r3, 0
/* 800C6394  40 82 00 14 */	bne lbl_800C63A8
/* 800C6398  7F C3 F3 78 */	mr r3, r30
/* 800C639C  4B FF 06 31 */	bl checkCutJumpInFly__9daAlink_cFv
/* 800C63A0  2C 03 00 00 */	cmpwi r3, 0
/* 800C63A4  41 82 00 0C */	beq lbl_800C63B0
lbl_800C63A8:
/* 800C63A8  38 60 00 01 */	li r3, 1
/* 800C63AC  48 00 03 18 */	b lbl_800C66C4
lbl_800C63B0:
/* 800C63B0  80 1E 31 98 */	lwz r0, 0x3198(r30)
/* 800C63B4  2C 00 00 31 */	cmpwi r0, 0x31
/* 800C63B8  41 82 00 0C */	beq lbl_800C63C4
/* 800C63BC  2C 00 00 32 */	cmpwi r0, 0x32
/* 800C63C0  40 82 00 0C */	bne lbl_800C63CC
lbl_800C63C4:
/* 800C63C4  38 00 00 04 */	li r0, 4
/* 800C63C8  98 1E 2F 99 */	stb r0, 0x2f99(r30)
lbl_800C63CC:
/* 800C63CC  A8 1E 30 0C */	lha r0, 0x300c(r30)
/* 800C63D0  2C 00 00 00 */	cmpwi r0, 0
/* 800C63D4  41 82 01 80 */	beq lbl_800C6554
/* 800C63D8  7F C3 F3 78 */	mr r3, r30
/* 800C63DC  38 80 00 01 */	li r4, 1
/* 800C63E0  4B FE CE 71 */	bl setDoStatus__9daAlink_cFUc
/* 800C63E4  88 1E 2F 8D */	lbz r0, 0x2f8d(r30)
/* 800C63E8  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 800C63EC  41 82 00 18 */	beq lbl_800C6404
/* 800C63F0  7F C3 F3 78 */	mr r3, r30
/* 800C63F4  48 01 E7 E1 */	bl freeGrabItem__9daAlink_cFv
/* 800C63F8  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 800C63FC  60 00 00 04 */	ori r0, r0, 4
/* 800C6400  90 1E 31 A0 */	stw r0, 0x31a0(r30)
lbl_800C6404:
/* 800C6404  7F C3 F3 78 */	mr r3, r30
/* 800C6408  48 01 DB 19 */	bl checkGrabRooster__9daAlink_cFv
/* 800C640C  2C 03 00 00 */	cmpwi r3, 0
/* 800C6410  40 82 00 50 */	bne lbl_800C6460
/* 800C6414  7F C3 F3 78 */	mr r3, r30
/* 800C6418  3C 80 80 39 */	lis r4, m__22daAlinkHIO_autoJump_c0@ha
/* 800C641C  38 84 E0 68 */	addi r4, r4, m__22daAlinkHIO_autoJump_c0@l
/* 800C6420  C0 24 00 74 */	lfs f1, 0x74(r4)
/* 800C6424  C0 44 00 78 */	lfs f2, 0x78(r4)
/* 800C6428  38 80 00 01 */	li r4, 1
/* 800C642C  4B FF 53 45 */	bl setSpecialGravity__9daAlink_cFffi
/* 800C6430  38 00 00 00 */	li r0, 0
/* 800C6434  B0 1E 30 0C */	sth r0, 0x300c(r30)
/* 800C6438  7F C3 F3 78 */	mr r3, r30
/* 800C643C  38 80 00 01 */	li r4, 1
/* 800C6440  C0 22 92 C4 */	lfs f1, lit_6109(r2)
/* 800C6444  4B FE 72 E1 */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
/* 800C6448  38 00 00 00 */	li r0, 0
/* 800C644C  B0 1E 30 A0 */	sth r0, 0x30a0(r30)
/* 800C6450  80 1E 31 A0 */	lwz r0, 0x31a0(r30)
/* 800C6454  60 00 00 04 */	ori r0, r0, 4
/* 800C6458  90 1E 31 A0 */	stw r0, 0x31a0(r30)
/* 800C645C  48 00 00 F8 */	b lbl_800C6554
lbl_800C6460:
/* 800C6460  38 00 18 00 */	li r0, 0x1800
/* 800C6464  B0 1E 30 A0 */	sth r0, 0x30a0(r30)
/* 800C6468  7F C3 F3 78 */	mr r3, r30
/* 800C646C  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 800C6470  81 8C 02 80 */	lwz r12, 0x280(r12)
/* 800C6474  7D 89 03 A6 */	mtctr r12
/* 800C6478  4E 80 04 21 */	bctrl 
/* 800C647C  2C 03 00 00 */	cmpwi r3, 0
/* 800C6480  40 82 00 24 */	bne lbl_800C64A4
/* 800C6484  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 800C6488  D0 1E 33 C4 */	stfs f0, 0x33c4(r30)
/* 800C648C  7F C3 F3 78 */	mr r3, r30
/* 800C6490  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800C6494  C0 5E 34 78 */	lfs f2, 0x3478(r30)
/* 800C6498  38 80 00 00 */	li r4, 0
/* 800C649C  4B FF 52 D5 */	bl setSpecialGravity__9daAlink_cFffi
/* 800C64A0  48 00 00 28 */	b lbl_800C64C8
lbl_800C64A4:
/* 800C64A4  7F C3 F3 78 */	mr r3, r30
/* 800C64A8  3C 80 80 39 */	lis r4, m__22daAlinkHIO_autoJump_c0@ha
/* 800C64AC  38 84 E0 68 */	addi r4, r4, m__22daAlinkHIO_autoJump_c0@l
/* 800C64B0  C0 24 00 74 */	lfs f1, 0x74(r4)
/* 800C64B4  C0 42 98 E4 */	lfs f2, lit_73781(r2)
/* 800C64B8  C0 04 00 78 */	lfs f0, 0x78(r4)
/* 800C64BC  EC 42 00 32 */	fmuls f2, f2, f0
/* 800C64C0  38 80 00 00 */	li r4, 0
/* 800C64C4  4B FF 52 AD */	bl setSpecialGravity__9daAlink_cFffi
lbl_800C64C8:
/* 800C64C8  C0 3E 33 AC */	lfs f1, 0x33ac(r30)
/* 800C64CC  C0 02 92 A4 */	lfs f0, lit_6021(r2)
/* 800C64D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800C64D4  40 81 00 3C */	ble lbl_800C6510
/* 800C64D8  2C 1F 00 01 */	cmpwi r31, 1
/* 800C64DC  41 82 00 34 */	beq lbl_800C6510
/* 800C64E0  38 7E 04 DE */	addi r3, r30, 0x4de
/* 800C64E4  A8 9E 2F E2 */	lha r4, 0x2fe2(r30)
/* 800C64E8  38 A0 00 05 */	li r5, 5
/* 800C64EC  38 C0 00 C8 */	li r6, 0xc8
/* 800C64F0  38 E0 00 32 */	li r7, 0x32
/* 800C64F4  48 1A A0 4D */	bl cLib_addCalcAngleS__FPsssss
/* 800C64F8  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 800C64FC  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 800C6500  7C 00 18 50 */	subf r0, r0, r3
/* 800C6504  7C 00 07 34 */	extsh r0, r0
/* 800C6508  B0 7E 04 E6 */	sth r3, 0x4e6(r30)
/* 800C650C  48 00 00 08 */	b lbl_800C6514
lbl_800C6510:
/* 800C6510  38 00 00 00 */	li r0, 0
lbl_800C6514:
/* 800C6514  38 7E 30 82 */	addi r3, r30, 0x3082
/* 800C6518  7C 00 07 34 */	extsh r0, r0
/* 800C651C  7F A0 00 D0 */	neg r29, r0
/* 800C6520  1C 1D 00 07 */	mulli r0, r29, 7
/* 800C6524  7C 04 07 34 */	extsh r4, r0
/* 800C6528  38 A0 00 0A */	li r5, 0xa
/* 800C652C  38 C0 03 E8 */	li r6, 0x3e8
/* 800C6530  38 E0 00 32 */	li r7, 0x32
/* 800C6534  48 1A A0 0D */	bl cLib_addCalcAngleS__FPsssss
/* 800C6538  38 7E 30 8A */	addi r3, r30, 0x308a
/* 800C653C  1C 1D 00 0C */	mulli r0, r29, 0xc
/* 800C6540  7C 04 07 34 */	extsh r4, r0
/* 800C6544  38 A0 00 0A */	li r5, 0xa
/* 800C6548  38 C0 03 E8 */	li r6, 0x3e8
/* 800C654C  38 E0 00 32 */	li r7, 0x32
/* 800C6550  48 1A 9F F1 */	bl cLib_addCalcAngleS__FPsssss
lbl_800C6554:
/* 800C6554  7F C3 F3 78 */	mr r3, r30
/* 800C6558  4B FE F6 69 */	bl setFallVoice__9daAlink_cFv
/* 800C655C  C0 42 93 88 */	lfs f2, lit_8782(r2)
/* 800C6560  C0 3E 33 C4 */	lfs f1, 0x33c4(r30)
/* 800C6564  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 800C6568  EC 01 00 28 */	fsubs f0, f1, f0
/* 800C656C  EC 22 00 32 */	fmuls f1, f2, f0
/* 800C6570  80 9E 31 98 */	lwz r4, 0x3198(r30)
/* 800C6574  2C 04 00 8C */	cmpwi r4, 0x8c
/* 800C6578  41 82 00 38 */	beq lbl_800C65B0
/* 800C657C  3C 60 80 39 */	lis r3, m__21daAlinkHIO_damFall_c0@ha
/* 800C6580  38 A3 E4 54 */	addi r5, r3, m__21daAlinkHIO_damFall_c0@l
/* 800C6584  C0 05 00 40 */	lfs f0, 0x40(r5)
/* 800C6588  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800C658C  40 81 00 24 */	ble lbl_800C65B0
/* 800C6590  7F C3 F3 78 */	mr r3, r30
/* 800C6594  38 80 00 8C */	li r4, 0x8c
/* 800C6598  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800C659C  C0 45 00 44 */	lfs f2, 0x44(r5)
/* 800C65A0  4B FE 6A 41 */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
/* 800C65A4  38 00 00 8C */	li r0, 0x8c
/* 800C65A8  90 1E 31 98 */	stw r0, 0x3198(r30)
/* 800C65AC  48 00 00 E8 */	b lbl_800C6694
lbl_800C65B0:
/* 800C65B0  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 800C65B4  C0 1E 05 30 */	lfs f0, 0x530(r30)
/* 800C65B8  FC 00 00 50 */	fneg f0, f0
/* 800C65BC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800C65C0  40 80 00 98 */	bge lbl_800C6658
/* 800C65C4  88 1E 2F 99 */	lbz r0, 0x2f99(r30)
/* 800C65C8  28 00 00 04 */	cmplwi r0, 4
/* 800C65CC  40 82 00 8C */	bne lbl_800C6658
/* 800C65D0  7F C3 F3 78 */	mr r3, r30
/* 800C65D4  48 01 D9 4D */	bl checkGrabRooster__9daAlink_cFv
/* 800C65D8  2C 03 00 00 */	cmpwi r3, 0
/* 800C65DC  41 82 00 20 */	beq lbl_800C65FC
/* 800C65E0  7F C3 F3 78 */	mr r3, r30
/* 800C65E4  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800C65E8  C0 5E 34 78 */	lfs f2, 0x3478(r30)
/* 800C65EC  38 80 00 00 */	li r4, 0
/* 800C65F0  4B FF 51 81 */	bl setSpecialGravity__9daAlink_cFffi
/* 800C65F4  38 00 00 01 */	li r0, 1
/* 800C65F8  B0 1E 30 0C */	sth r0, 0x300c(r30)
lbl_800C65FC:
/* 800C65FC  7F C3 F3 78 */	mr r3, r30
/* 800C6600  38 80 00 33 */	li r4, 0x33
/* 800C6604  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800C6608  3C A0 80 39 */	lis r5, m__22daAlinkHIO_autoJump_c0@ha
/* 800C660C  38 A5 E0 68 */	addi r5, r5, m__22daAlinkHIO_autoJump_c0@l
/* 800C6610  C0 45 00 6C */	lfs f2, 0x6c(r5)
/* 800C6614  4B FE 69 CD */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
/* 800C6618  A8 1E 30 0C */	lha r0, 0x300c(r30)
/* 800C661C  2C 00 00 00 */	cmpwi r0, 0
/* 800C6620  41 82 00 24 */	beq lbl_800C6644
/* 800C6624  7F C3 F3 78 */	mr r3, r30
/* 800C6628  38 80 02 76 */	li r4, 0x276
/* 800C662C  38 A0 00 01 */	li r5, 1
/* 800C6630  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800C6634  C0 42 92 C0 */	lfs f2, lit_6108(r2)
/* 800C6638  38 C0 FF FF */	li r6, -1
/* 800C663C  C0 62 92 C4 */	lfs f3, lit_6109(r2)
/* 800C6640  4B FE 6D 99 */	bl setUpperAnime__9daAlink_cFUsQ29daAlink_c13daAlink_UPPERffsf
lbl_800C6644:
/* 800C6644  38 00 00 20 */	li r0, 0x20
/* 800C6648  98 1E 2F 99 */	stb r0, 0x2f99(r30)
/* 800C664C  38 00 00 33 */	li r0, 0x33
/* 800C6650  90 1E 31 98 */	stw r0, 0x3198(r30)
/* 800C6654  48 00 00 40 */	b lbl_800C6694
lbl_800C6658:
/* 800C6658  2C 04 00 31 */	cmpwi r4, 0x31
/* 800C665C  40 82 00 38 */	bne lbl_800C6694
/* 800C6660  38 7E 1F D0 */	addi r3, r30, 0x1fd0
/* 800C6664  48 09 7E 69 */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800C6668  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800C666C  41 82 00 28 */	beq lbl_800C6694
/* 800C6670  7F C3 F3 78 */	mr r3, r30
/* 800C6674  38 80 00 32 */	li r4, 0x32
/* 800C6678  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 800C667C  3C A0 80 39 */	lis r5, m__22daAlinkHIO_autoJump_c0@ha
/* 800C6680  38 A5 E0 68 */	addi r5, r5, m__22daAlinkHIO_autoJump_c0@l
/* 800C6684  C0 45 00 68 */	lfs f2, 0x68(r5)
/* 800C6688  4B FE 69 59 */	bl setSingleAnimeBaseSpeed__9daAlink_cFQ29daAlink_c11daAlink_ANMff
/* 800C668C  38 00 00 32 */	li r0, 0x32
/* 800C6690  90 1E 31 98 */	stw r0, 0x3198(r30)
lbl_800C6694:
/* 800C6694  7F C3 F3 78 */	mr r3, r30
/* 800C6698  48 01 D8 89 */	bl checkGrabRooster__9daAlink_cFv
/* 800C669C  2C 03 00 00 */	cmpwi r3, 0
/* 800C66A0  41 82 00 18 */	beq lbl_800C66B8
/* 800C66A4  C0 3E 35 B0 */	lfs f1, 0x35b0(r30)
/* 800C66A8  C0 02 92 C0 */	lfs f0, lit_6108(r2)
/* 800C66AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800C66B0  40 81 00 08 */	ble lbl_800C66B8
/* 800C66B4  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
lbl_800C66B8:
/* 800C66B8  7F C3 F3 78 */	mr r3, r30
/* 800C66BC  4B FF 32 91 */	bl checkItemChangeFromButton__9daAlink_cFv
/* 800C66C0  38 60 00 01 */	li r3, 1
lbl_800C66C4:
/* 800C66C4  39 61 00 20 */	addi r11, r1, 0x20
/* 800C66C8  48 29 BB 59 */	bl _restgpr_27
/* 800C66CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800C66D0  7C 08 03 A6 */	mtlr r0
/* 800C66D4  38 21 00 20 */	addi r1, r1, 0x20
/* 800C66D8  4E 80 00 20 */	blr 
