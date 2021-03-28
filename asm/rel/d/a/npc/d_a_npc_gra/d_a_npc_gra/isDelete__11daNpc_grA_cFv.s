lbl_809C1244:
/* 809C1244  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809C1248  7C 08 02 A6 */	mflr r0
/* 809C124C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809C1250  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809C1254  7C 7F 1B 78 */	mr r31, r3
/* 809C1258  88 03 14 74 */	lbz r0, 0x1474(r3)
/* 809C125C  28 00 00 0C */	cmplwi r0, 0xc
/* 809C1260  41 82 00 7C */	beq lbl_809C12DC
/* 809C1264  28 00 00 00 */	cmplwi r0, 0
/* 809C1268  41 82 00 74 */	beq lbl_809C12DC
/* 809C126C  28 00 00 01 */	cmplwi r0, 1
/* 809C1270  41 82 00 6C */	beq lbl_809C12DC
/* 809C1274  28 00 00 03 */	cmplwi r0, 3
/* 809C1278  41 82 00 64 */	beq lbl_809C12DC
/* 809C127C  28 00 00 04 */	cmplwi r0, 4
/* 809C1280  41 82 00 5C */	beq lbl_809C12DC
/* 809C1284  28 00 00 05 */	cmplwi r0, 5
/* 809C1288  41 82 00 54 */	beq lbl_809C12DC
/* 809C128C  28 00 00 06 */	cmplwi r0, 6
/* 809C1290  40 82 00 14 */	bne lbl_809C12A4
/* 809C1294  38 60 01 50 */	li r3, 0x150
/* 809C1298  4B 79 43 9C */	b daNpcF_chkEvtBit__FUl
/* 809C129C  2C 03 00 00 */	cmpwi r3, 0
/* 809C12A0  40 82 00 3C */	bne lbl_809C12DC
lbl_809C12A4:
/* 809C12A4  88 1F 14 74 */	lbz r0, 0x1474(r31)
/* 809C12A8  28 00 00 08 */	cmplwi r0, 8
/* 809C12AC  40 82 00 14 */	bne lbl_809C12C0
/* 809C12B0  38 60 01 79 */	li r3, 0x179
/* 809C12B4  4B 79 43 80 */	b daNpcF_chkEvtBit__FUl
/* 809C12B8  2C 03 00 00 */	cmpwi r3, 0
/* 809C12BC  40 82 00 20 */	bne lbl_809C12DC
lbl_809C12C0:
/* 809C12C0  88 1F 14 74 */	lbz r0, 0x1474(r31)
/* 809C12C4  28 00 00 09 */	cmplwi r0, 9
/* 809C12C8  41 82 00 14 */	beq lbl_809C12DC
/* 809C12CC  28 00 00 0A */	cmplwi r0, 0xa
/* 809C12D0  41 82 00 0C */	beq lbl_809C12DC
/* 809C12D4  28 00 00 0B */	cmplwi r0, 0xb
/* 809C12D8  40 82 00 0C */	bne lbl_809C12E4
lbl_809C12DC:
/* 809C12DC  38 60 00 00 */	li r3, 0
/* 809C12E0  48 00 00 E4 */	b lbl_809C13C4
lbl_809C12E4:
/* 809C12E4  28 00 00 02 */	cmplwi r0, 2
/* 809C12E8  40 82 00 6C */	bne lbl_809C1354
/* 809C12EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 809C12F0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 809C12F4  38 63 4E 00 */	addi r3, r3, 0x4e00
/* 809C12F8  3C 80 80 9D */	lis r4, struct_809CA4B8+0x0@ha
/* 809C12FC  38 84 A4 B8 */	addi r4, r4, struct_809CA4B8+0x0@l
/* 809C1300  38 84 01 36 */	addi r4, r4, 0x136
/* 809C1304  4B 9A 76 90 */	b strcmp
/* 809C1308  2C 03 00 00 */	cmpwi r3, 0
/* 809C130C  40 82 00 14 */	bne lbl_809C1320
/* 809C1310  38 60 00 40 */	li r3, 0x40
/* 809C1314  4B 79 43 20 */	b daNpcF_chkEvtBit__FUl
/* 809C1318  2C 03 00 00 */	cmpwi r3, 0
/* 809C131C  41 82 00 28 */	beq lbl_809C1344
lbl_809C1320:
/* 809C1320  7F E3 FB 78 */	mr r3, r31
/* 809C1324  4B FF FE 3D */	bl getMode1__11daNpc_grA_cFv
/* 809C1328  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 809C132C  28 00 00 01 */	cmplwi r0, 1
/* 809C1330  40 82 00 1C */	bne lbl_809C134C
/* 809C1334  38 60 01 08 */	li r3, 0x108
/* 809C1338  4B 79 42 FC */	b daNpcF_chkEvtBit__FUl
/* 809C133C  2C 03 00 00 */	cmpwi r3, 0
/* 809C1340  40 82 00 0C */	bne lbl_809C134C
lbl_809C1344:
/* 809C1344  38 60 00 01 */	li r3, 1
/* 809C1348  48 00 00 7C */	b lbl_809C13C4
lbl_809C134C:
/* 809C134C  38 60 00 00 */	li r3, 0
/* 809C1350  48 00 00 74 */	b lbl_809C13C4
lbl_809C1354:
/* 809C1354  28 00 00 07 */	cmplwi r0, 7
/* 809C1358  40 82 00 68 */	bne lbl_809C13C0
/* 809C135C  38 60 00 67 */	li r3, 0x67
/* 809C1360  4B 79 42 D4 */	b daNpcF_chkEvtBit__FUl
/* 809C1364  2C 03 00 00 */	cmpwi r3, 0
/* 809C1368  40 82 00 0C */	bne lbl_809C1374
/* 809C136C  38 60 00 01 */	li r3, 1
/* 809C1370  48 00 00 54 */	b lbl_809C13C4
lbl_809C1374:
/* 809C1374  38 60 01 79 */	li r3, 0x179
/* 809C1378  4B 79 42 BC */	b daNpcF_chkEvtBit__FUl
/* 809C137C  2C 03 00 00 */	cmpwi r3, 0
/* 809C1380  40 82 00 0C */	bne lbl_809C138C
/* 809C1384  38 60 00 00 */	li r3, 0
/* 809C1388  48 00 00 3C */	b lbl_809C13C4
lbl_809C138C:
/* 809C138C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 809C1390  38 80 00 21 */	li r4, 0x21
/* 809C1394  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 809C1398  7C 05 07 74 */	extsb r5, r0
/* 809C139C  38 C0 00 00 */	li r6, 0
/* 809C13A0  38 E0 00 00 */	li r7, 0
/* 809C13A4  3D 00 80 9D */	lis r8, lit_4611@ha
/* 809C13A8  C0 28 9E 34 */	lfs f1, lit_4611@l(r8)
/* 809C13AC  FC 40 08 90 */	fmr f2, f1
/* 809C13B0  39 00 00 80 */	li r8, 0x80
/* 809C13B4  4B 65 AD 20 */	b fopAcM_createItemForBoss__FPC4cXyziiPC5csXyzPC4cXyzffi
/* 809C13B8  38 60 00 01 */	li r3, 1
/* 809C13BC  48 00 00 08 */	b lbl_809C13C4
lbl_809C13C0:
/* 809C13C0  38 60 00 01 */	li r3, 1
lbl_809C13C4:
/* 809C13C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809C13C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809C13CC  7C 08 03 A6 */	mtlr r0
/* 809C13D0  38 21 00 10 */	addi r1, r1, 0x10
/* 809C13D4  4E 80 00 20 */	blr 
