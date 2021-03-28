lbl_80A1FF78:
/* 80A1FF78  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A1FF7C  7C 08 02 A6 */	mflr r0
/* 80A1FF80  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A1FF84  39 61 00 40 */	addi r11, r1, 0x40
/* 80A1FF88  4B 94 22 4C */	b _savegpr_27
/* 80A1FF8C  7C 7F 1B 78 */	mr r31, r3
/* 80A1FF90  7C 9B 23 78 */	mr r27, r4
/* 80A1FF94  7C BC 2B 78 */	mr r28, r5
/* 80A1FF98  3C 60 80 A2 */	lis r3, lit_3908@ha
/* 80A1FF9C  3B C3 10 80 */	addi r30, r3, lit_3908@l
/* 80A1FFA0  80 7E 02 98 */	lwz r3, 0x298(r30)
/* 80A1FFA4  80 1E 02 9C */	lwz r0, 0x29c(r30)
/* 80A1FFA8  90 61 00 10 */	stw r3, 0x10(r1)
/* 80A1FFAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A1FFB0  80 1E 02 A0 */	lwz r0, 0x2a0(r30)
/* 80A1FFB4  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A1FFB8  38 7F 14 48 */	addi r3, r31, 0x1448
/* 80A1FFBC  4B 73 07 30 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80A1FFC0  90 61 00 10 */	stw r3, 0x10(r1)
/* 80A1FFC4  38 7F 14 50 */	addi r3, r31, 0x1450
/* 80A1FFC8  4B 73 07 24 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80A1FFCC  90 61 00 14 */	stw r3, 0x14(r1)
/* 80A1FFD0  38 7F 14 58 */	addi r3, r31, 0x1458
/* 80A1FFD4  4B 73 07 18 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80A1FFD8  90 61 00 18 */	stw r3, 0x18(r1)
/* 80A1FFDC  80 7E 02 A4 */	lwz r3, 0x2a4(r30)
/* 80A1FFE0  80 1E 02 A8 */	lwz r0, 0x2a8(r30)
/* 80A1FFE4  90 61 00 08 */	stw r3, 8(r1)
/* 80A1FFE8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A1FFEC  3B A0 00 00 */	li r29, 0
/* 80A1FFF0  80 1B 00 00 */	lwz r0, 0(r27)
/* 80A1FFF4  2C 00 00 14 */	cmpwi r0, 0x14
/* 80A1FFF8  41 82 00 88 */	beq lbl_80A20080
/* 80A1FFFC  40 80 00 10 */	bge lbl_80A2000C
/* 80A20000  2C 00 00 0A */	cmpwi r0, 0xa
/* 80A20004  41 82 00 14 */	beq lbl_80A20018
/* 80A20008  48 00 01 44 */	b lbl_80A2014C
lbl_80A2000C:
/* 80A2000C  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80A20010  41 82 00 D8 */	beq lbl_80A200E8
/* 80A20014  48 00 01 38 */	b lbl_80A2014C
lbl_80A20018:
/* 80A20018  80 7F 14 30 */	lwz r3, 0x1430(r31)
/* 80A2001C  2C 03 00 00 */	cmpwi r3, 0
/* 80A20020  40 81 00 38 */	ble lbl_80A20058
/* 80A20024  38 03 FF FF */	addi r0, r3, -1
/* 80A20028  90 1F 14 30 */	stw r0, 0x1430(r31)
/* 80A2002C  80 1F 14 30 */	lwz r0, 0x1430(r31)
/* 80A20030  2C 00 00 00 */	cmpwi r0, 0
/* 80A20034  40 82 00 24 */	bne lbl_80A20058
/* 80A20038  7F E3 FB 78 */	mr r3, r31
/* 80A2003C  38 80 00 04 */	li r4, 4
/* 80A20040  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 80A20044  38 A0 00 00 */	li r5, 0
/* 80A20048  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80A2004C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A20050  7D 89 03 A6 */	mtctr r12
/* 80A20054  4E 80 04 21 */	bctrl 
lbl_80A20058:
/* 80A20058  93 81 00 08 */	stw r28, 8(r1)
/* 80A2005C  7F E3 FB 78 */	mr r3, r31
/* 80A20060  38 81 00 08 */	addi r4, r1, 8
/* 80A20064  38 A0 00 00 */	li r5, 0
/* 80A20068  38 C1 00 10 */	addi r6, r1, 0x10
/* 80A2006C  4B 73 3D 18 */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80A20070  2C 03 00 00 */	cmpwi r3, 0
/* 80A20074  41 82 00 DC */	beq lbl_80A20150
/* 80A20078  3B A0 00 01 */	li r29, 1
/* 80A2007C  48 00 00 D4 */	b lbl_80A20150
lbl_80A20080:
/* 80A20080  80 7F 14 30 */	lwz r3, 0x1430(r31)
/* 80A20084  2C 03 00 00 */	cmpwi r3, 0
/* 80A20088  40 81 00 38 */	ble lbl_80A200C0
/* 80A2008C  38 03 FF FF */	addi r0, r3, -1
/* 80A20090  90 1F 14 30 */	stw r0, 0x1430(r31)
/* 80A20094  80 1F 14 30 */	lwz r0, 0x1430(r31)
/* 80A20098  2C 00 00 00 */	cmpwi r0, 0
/* 80A2009C  40 82 00 24 */	bne lbl_80A200C0
/* 80A200A0  7F E3 FB 78 */	mr r3, r31
/* 80A200A4  38 80 00 04 */	li r4, 4
/* 80A200A8  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 80A200AC  38 A0 00 00 */	li r5, 0
/* 80A200B0  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80A200B4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A200B8  7D 89 03 A6 */	mtctr r12
/* 80A200BC  4E 80 04 21 */	bctrl 
lbl_80A200C0:
/* 80A200C0  93 81 00 08 */	stw r28, 8(r1)
/* 80A200C4  7F E3 FB 78 */	mr r3, r31
/* 80A200C8  38 81 00 08 */	addi r4, r1, 8
/* 80A200CC  38 A0 00 00 */	li r5, 0
/* 80A200D0  38 C1 00 10 */	addi r6, r1, 0x10
/* 80A200D4  4B 73 3C B0 */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80A200D8  2C 03 00 00 */	cmpwi r3, 0
/* 80A200DC  41 82 00 74 */	beq lbl_80A20150
/* 80A200E0  3B A0 00 01 */	li r29, 1
/* 80A200E4  48 00 00 6C */	b lbl_80A20150
lbl_80A200E8:
/* 80A200E8  80 7F 14 30 */	lwz r3, 0x1430(r31)
/* 80A200EC  2C 03 00 00 */	cmpwi r3, 0
/* 80A200F0  40 81 00 38 */	ble lbl_80A20128
/* 80A200F4  38 03 FF FF */	addi r0, r3, -1
/* 80A200F8  90 1F 14 30 */	stw r0, 0x1430(r31)
/* 80A200FC  80 1F 14 30 */	lwz r0, 0x1430(r31)
/* 80A20100  2C 00 00 00 */	cmpwi r0, 0
/* 80A20104  40 82 00 24 */	bne lbl_80A20128
/* 80A20108  7F E3 FB 78 */	mr r3, r31
/* 80A2010C  38 80 00 04 */	li r4, 4
/* 80A20110  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 80A20114  38 A0 00 00 */	li r5, 0
/* 80A20118  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80A2011C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A20120  7D 89 03 A6 */	mtctr r12
/* 80A20124  4E 80 04 21 */	bctrl 
lbl_80A20128:
/* 80A20128  7F E3 FB 78 */	mr r3, r31
/* 80A2012C  38 80 00 00 */	li r4, 0
/* 80A20130  38 A0 00 00 */	li r5, 0
/* 80A20134  38 C1 00 10 */	addi r6, r1, 0x10
/* 80A20138  4B 73 3C 4C */	b talkProc__8daNpcF_cFPiiPP10fopAc_ac_c
/* 80A2013C  2C 03 00 00 */	cmpwi r3, 0
/* 80A20140  41 82 00 10 */	beq lbl_80A20150
/* 80A20144  3B A0 00 01 */	li r29, 1
/* 80A20148  48 00 00 08 */	b lbl_80A20150
lbl_80A2014C:
/* 80A2014C  3B A0 00 01 */	li r29, 1
lbl_80A20150:
/* 80A20150  7F A3 EB 78 */	mr r3, r29
/* 80A20154  39 61 00 40 */	addi r11, r1, 0x40
/* 80A20158  4B 94 20 C8 */	b _restgpr_27
/* 80A2015C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A20160  7C 08 03 A6 */	mtlr r0
/* 80A20164  38 21 00 40 */	addi r1, r1, 0x40
/* 80A20168  4E 80 00 20 */	blr 
