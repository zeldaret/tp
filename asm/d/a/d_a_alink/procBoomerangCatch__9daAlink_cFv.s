lbl_800E1248:
/* 800E1248  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800E124C  7C 08 02 A6 */	mflr r0
/* 800E1250  90 01 00 14 */	stw r0, 0x14(r1)
/* 800E1254  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800E1258  7C 7F 1B 78 */	mr r31, r3
/* 800E125C  38 7F 1F D0 */	addi r3, r31, 0x1fd0
/* 800E1260  80 1F 05 88 */	lwz r0, 0x588(r31)
/* 800E1264  64 00 08 00 */	oris r0, r0, 0x800
/* 800E1268  90 1F 05 88 */	stw r0, 0x588(r31)
/* 800E126C  C0 3F 1F E0 */	lfs f1, 0x1fe0(r31)
/* 800E1270  3C 80 80 39 */	lis r4, m__18daAlinkHIO_boom_c0@ha
/* 800E1274  38 84 E6 C8 */	addi r4, r4, m__18daAlinkHIO_boom_c0@l
/* 800E1278  C0 04 00 24 */	lfs f0, 0x24(r4)
/* 800E127C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800E1280  40 81 00 10 */	ble lbl_800E1290
/* 800E1284  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 800E1288  60 00 00 04 */	ori r0, r0, 4
/* 800E128C  90 1F 31 A0 */	stw r0, 0x31a0(r31)
lbl_800E1290:
/* 800E1290  48 07 D2 3D */	bl checkAnmEnd__16daPy_frameCtrl_cFv
/* 800E1294  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 800E1298  41 82 00 24 */	beq lbl_800E12BC
/* 800E129C  7F E3 FB 78 */	mr r3, r31
/* 800E12A0  38 80 00 02 */	li r4, 2
/* 800E12A4  C0 22 92 BC */	lfs f1, lit_6041(r2)
/* 800E12A8  4B FC C4 7D */	bl resetUpperAnime__9daAlink_cFQ29daAlink_c13daAlink_UPPERf
/* 800E12AC  7F E3 FB 78 */	mr r3, r31
/* 800E12B0  38 80 00 00 */	li r4, 0
/* 800E12B4  4B FD 8E 1D */	bl checkNextAction__9daAlink_cFi
/* 800E12B8  48 00 00 10 */	b lbl_800E12C8
lbl_800E12BC:
/* 800E12BC  7F E3 FB 78 */	mr r3, r31
/* 800E12C0  38 80 00 01 */	li r4, 1
/* 800E12C4  4B FD 8E 0D */	bl checkNextAction__9daAlink_cFi
lbl_800E12C8:
/* 800E12C8  38 60 00 01 */	li r3, 1
/* 800E12CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800E12D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800E12D4  7C 08 03 A6 */	mtlr r0
/* 800E12D8  38 21 00 10 */	addi r1, r1, 0x10
/* 800E12DC  4E 80 00 20 */	blr 
