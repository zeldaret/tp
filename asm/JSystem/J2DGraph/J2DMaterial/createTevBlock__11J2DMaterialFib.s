lbl_802EA410:
/* 802EA410  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802EA414  7C 08 02 A6 */	mflr r0
/* 802EA418  90 01 00 14 */	stw r0, 0x14(r1)
/* 802EA41C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 802EA420  41 82 00 C4 */	beq lbl_802EA4E4
/* 802EA424  2C 03 00 01 */	cmpwi r3, 1
/* 802EA428  41 81 00 24 */	bgt lbl_802EA44C
/* 802EA42C  38 60 00 60 */	li r3, 0x60
/* 802EA430  4B FE 48 1D */	bl __nw__FUl
/* 802EA434  7C 60 1B 79 */	or. r0, r3, r3
/* 802EA438  41 82 00 0C */	beq lbl_802EA444
/* 802EA43C  48 00 14 51 */	bl __ct__12J2DTevBlock1Fv
/* 802EA440  7C 60 1B 78 */	mr r0, r3
lbl_802EA444:
/* 802EA444  7C 03 03 78 */	mr r3, r0
/* 802EA448  48 00 01 6C */	b lbl_802EA5B4
lbl_802EA44C:
/* 802EA44C  2C 03 00 02 */	cmpwi r3, 2
/* 802EA450  40 82 00 24 */	bne lbl_802EA474
/* 802EA454  38 60 00 7C */	li r3, 0x7c
/* 802EA458  4B FE 47 F5 */	bl __nw__FUl
/* 802EA45C  7C 60 1B 79 */	or. r0, r3, r3
/* 802EA460  41 82 00 0C */	beq lbl_802EA46C
/* 802EA464  48 00 21 55 */	bl __ct__12J2DTevBlock2Fv
/* 802EA468  7C 60 1B 78 */	mr r0, r3
lbl_802EA46C:
/* 802EA46C  7C 03 03 78 */	mr r3, r0
/* 802EA470  48 00 01 44 */	b lbl_802EA5B4
lbl_802EA474:
/* 802EA474  2C 03 00 04 */	cmpwi r3, 4
/* 802EA478  41 81 00 24 */	bgt lbl_802EA49C
/* 802EA47C  38 60 00 B4 */	li r3, 0xb4
/* 802EA480  4B FE 47 CD */	bl __nw__FUl
/* 802EA484  7C 60 1B 79 */	or. r0, r3, r3
/* 802EA488  41 82 00 0C */	beq lbl_802EA494
/* 802EA48C  48 00 34 31 */	bl __ct__12J2DTevBlock4Fv
/* 802EA490  7C 60 1B 78 */	mr r0, r3
lbl_802EA494:
/* 802EA494  7C 03 03 78 */	mr r3, r0
/* 802EA498  48 00 01 1C */	b lbl_802EA5B4
lbl_802EA49C:
/* 802EA49C  2C 03 00 08 */	cmpwi r3, 8
/* 802EA4A0  41 81 00 24 */	bgt lbl_802EA4C4
/* 802EA4A4  38 60 01 24 */	li r3, 0x124
/* 802EA4A8  4B FE 47 A5 */	bl __nw__FUl
/* 802EA4AC  7C 60 1B 79 */	or. r0, r3, r3
/* 802EA4B0  41 82 00 0C */	beq lbl_802EA4BC
/* 802EA4B4  48 00 48 B1 */	bl __ct__12J2DTevBlock8Fv
/* 802EA4B8  7C 60 1B 78 */	mr r0, r3
lbl_802EA4BC:
/* 802EA4BC  7C 03 03 78 */	mr r3, r0
/* 802EA4C0  48 00 00 F4 */	b lbl_802EA5B4
lbl_802EA4C4:
/* 802EA4C4  38 60 01 B4 */	li r3, 0x1b4
/* 802EA4C8  4B FE 47 85 */	bl __nw__FUl
/* 802EA4CC  7C 60 1B 79 */	or. r0, r3, r3
/* 802EA4D0  41 82 00 0C */	beq lbl_802EA4DC
/* 802EA4D4  48 00 5D 11 */	bl __ct__13J2DTevBlock16Fv
/* 802EA4D8  7C 60 1B 78 */	mr r0, r3
lbl_802EA4DC:
/* 802EA4DC  7C 03 03 78 */	mr r3, r0
/* 802EA4E0  48 00 00 D4 */	b lbl_802EA5B4
lbl_802EA4E4:
/* 802EA4E4  2C 03 00 01 */	cmpwi r3, 1
/* 802EA4E8  41 81 00 28 */	bgt lbl_802EA510
/* 802EA4EC  38 60 00 60 */	li r3, 0x60
/* 802EA4F0  38 80 FF FC */	li r4, -4
/* 802EA4F4  4B FE 47 81 */	bl __nw__FUli
/* 802EA4F8  7C 60 1B 79 */	or. r0, r3, r3
/* 802EA4FC  41 82 00 0C */	beq lbl_802EA508
/* 802EA500  48 00 13 8D */	bl __ct__12J2DTevBlock1Fv
/* 802EA504  7C 60 1B 78 */	mr r0, r3
lbl_802EA508:
/* 802EA508  7C 03 03 78 */	mr r3, r0
/* 802EA50C  48 00 00 A8 */	b lbl_802EA5B4
lbl_802EA510:
/* 802EA510  2C 03 00 02 */	cmpwi r3, 2
/* 802EA514  40 82 00 28 */	bne lbl_802EA53C
/* 802EA518  38 60 00 7C */	li r3, 0x7c
/* 802EA51C  38 80 FF FC */	li r4, -4
/* 802EA520  4B FE 47 55 */	bl __nw__FUli
/* 802EA524  7C 60 1B 79 */	or. r0, r3, r3
/* 802EA528  41 82 00 0C */	beq lbl_802EA534
/* 802EA52C  48 00 20 8D */	bl __ct__12J2DTevBlock2Fv
/* 802EA530  7C 60 1B 78 */	mr r0, r3
lbl_802EA534:
/* 802EA534  7C 03 03 78 */	mr r3, r0
/* 802EA538  48 00 00 7C */	b lbl_802EA5B4
lbl_802EA53C:
/* 802EA53C  2C 03 00 04 */	cmpwi r3, 4
/* 802EA540  41 81 00 28 */	bgt lbl_802EA568
/* 802EA544  38 60 00 B4 */	li r3, 0xb4
/* 802EA548  38 80 FF FC */	li r4, -4
/* 802EA54C  4B FE 47 29 */	bl __nw__FUli
/* 802EA550  7C 60 1B 79 */	or. r0, r3, r3
/* 802EA554  41 82 00 0C */	beq lbl_802EA560
/* 802EA558  48 00 33 65 */	bl __ct__12J2DTevBlock4Fv
/* 802EA55C  7C 60 1B 78 */	mr r0, r3
lbl_802EA560:
/* 802EA560  7C 03 03 78 */	mr r3, r0
/* 802EA564  48 00 00 50 */	b lbl_802EA5B4
lbl_802EA568:
/* 802EA568  2C 03 00 08 */	cmpwi r3, 8
/* 802EA56C  41 81 00 28 */	bgt lbl_802EA594
/* 802EA570  38 60 01 24 */	li r3, 0x124
/* 802EA574  38 80 FF FC */	li r4, -4
/* 802EA578  4B FE 46 FD */	bl __nw__FUli
/* 802EA57C  7C 60 1B 79 */	or. r0, r3, r3
/* 802EA580  41 82 00 0C */	beq lbl_802EA58C
/* 802EA584  48 00 47 E1 */	bl __ct__12J2DTevBlock8Fv
/* 802EA588  7C 60 1B 78 */	mr r0, r3
lbl_802EA58C:
/* 802EA58C  7C 03 03 78 */	mr r3, r0
/* 802EA590  48 00 00 24 */	b lbl_802EA5B4
lbl_802EA594:
/* 802EA594  38 60 01 B4 */	li r3, 0x1b4
/* 802EA598  38 80 FF FC */	li r4, -4
/* 802EA59C  4B FE 46 D9 */	bl __nw__FUli
/* 802EA5A0  7C 60 1B 79 */	or. r0, r3, r3
/* 802EA5A4  41 82 00 0C */	beq lbl_802EA5B0
/* 802EA5A8  48 00 5C 3D */	bl __ct__13J2DTevBlock16Fv
/* 802EA5AC  7C 60 1B 78 */	mr r0, r3
lbl_802EA5B0:
/* 802EA5B0  7C 03 03 78 */	mr r3, r0
lbl_802EA5B4:
/* 802EA5B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802EA5B8  7C 08 03 A6 */	mtlr r0
/* 802EA5BC  38 21 00 10 */	addi r1, r1, 0x10
/* 802EA5C0  4E 80 00 20 */	blr 
