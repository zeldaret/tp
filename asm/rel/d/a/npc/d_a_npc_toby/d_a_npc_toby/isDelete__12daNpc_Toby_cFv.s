lbl_80B1F274:
/* 80B1F274  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B1F278  7C 08 02 A6 */	mflr r0
/* 80B1F27C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B1F280  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B1F284  88 03 0F 84 */	lbz r0, 0xf84(r3)
/* 80B1F288  2C 00 00 02 */	cmpwi r0, 2
/* 80B1F28C  41 82 00 3C */	beq lbl_80B1F2C8
/* 80B1F290  40 80 00 14 */	bge lbl_80B1F2A4
/* 80B1F294  2C 00 00 00 */	cmpwi r0, 0
/* 80B1F298  41 82 00 1C */	beq lbl_80B1F2B4
/* 80B1F29C  40 80 00 20 */	bge lbl_80B1F2BC
/* 80B1F2A0  48 00 00 CC */	b lbl_80B1F36C
lbl_80B1F2A4:
/* 80B1F2A4  2C 00 00 05 */	cmpwi r0, 5
/* 80B1F2A8  41 82 00 74 */	beq lbl_80B1F31C
/* 80B1F2AC  40 80 00 C0 */	bge lbl_80B1F36C
/* 80B1F2B0  48 00 00 2C */	b lbl_80B1F2DC
lbl_80B1F2B4:
/* 80B1F2B4  38 60 00 00 */	li r3, 0
/* 80B1F2B8  48 00 00 B8 */	b lbl_80B1F370
lbl_80B1F2BC:
/* 80B1F2BC  38 60 00 54 */	li r3, 0x54
/* 80B1F2C0  4B 62 D7 EC */	b daNpcT_chkEvtBit__FUl
/* 80B1F2C4  48 00 00 AC */	b lbl_80B1F370
lbl_80B1F2C8:
/* 80B1F2C8  38 60 00 54 */	li r3, 0x54
/* 80B1F2CC  4B 62 D7 E0 */	b daNpcT_chkEvtBit__FUl
/* 80B1F2D0  7C 60 00 34 */	cntlzw r0, r3
/* 80B1F2D4  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80B1F2D8  48 00 00 98 */	b lbl_80B1F370
lbl_80B1F2DC:
/* 80B1F2DC  3B E0 00 00 */	li r31, 0
/* 80B1F2E0  38 60 01 36 */	li r3, 0x136
/* 80B1F2E4  4B 62 D7 C8 */	b daNpcT_chkEvtBit__FUl
/* 80B1F2E8  2C 03 00 00 */	cmpwi r3, 0
/* 80B1F2EC  41 82 00 24 */	beq lbl_80B1F310
/* 80B1F2F0  38 60 01 90 */	li r3, 0x190
/* 80B1F2F4  4B 62 D7 B8 */	b daNpcT_chkEvtBit__FUl
/* 80B1F2F8  2C 03 00 00 */	cmpwi r3, 0
/* 80B1F2FC  41 82 00 14 */	beq lbl_80B1F310
/* 80B1F300  38 60 01 E4 */	li r3, 0x1e4
/* 80B1F304  4B 62 D7 A8 */	b daNpcT_chkEvtBit__FUl
/* 80B1F308  2C 03 00 00 */	cmpwi r3, 0
/* 80B1F30C  41 82 00 08 */	beq lbl_80B1F314
lbl_80B1F310:
/* 80B1F310  3B E0 00 01 */	li r31, 1
lbl_80B1F314:
/* 80B1F314  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80B1F318  48 00 00 58 */	b lbl_80B1F370
lbl_80B1F31C:
/* 80B1F31C  3B E0 00 00 */	li r31, 0
/* 80B1F320  38 60 01 36 */	li r3, 0x136
/* 80B1F324  4B 62 D7 88 */	b daNpcT_chkEvtBit__FUl
/* 80B1F328  2C 03 00 00 */	cmpwi r3, 0
/* 80B1F32C  41 82 00 34 */	beq lbl_80B1F360
/* 80B1F330  38 60 01 90 */	li r3, 0x190
/* 80B1F334  4B 62 D7 78 */	b daNpcT_chkEvtBit__FUl
/* 80B1F338  2C 03 00 00 */	cmpwi r3, 0
/* 80B1F33C  41 82 00 24 */	beq lbl_80B1F360
/* 80B1F340  38 60 01 E4 */	li r3, 0x1e4
/* 80B1F344  4B 62 D7 68 */	b daNpcT_chkEvtBit__FUl
/* 80B1F348  2C 03 00 00 */	cmpwi r3, 0
/* 80B1F34C  40 82 00 14 */	bne lbl_80B1F360
/* 80B1F350  38 60 01 E5 */	li r3, 0x1e5
/* 80B1F354  4B 62 D7 58 */	b daNpcT_chkEvtBit__FUl
/* 80B1F358  2C 03 00 00 */	cmpwi r3, 0
/* 80B1F35C  41 82 00 08 */	beq lbl_80B1F364
lbl_80B1F360:
/* 80B1F360  3B E0 00 01 */	li r31, 1
lbl_80B1F364:
/* 80B1F364  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 80B1F368  48 00 00 08 */	b lbl_80B1F370
lbl_80B1F36C:
/* 80B1F36C  38 60 00 00 */	li r3, 0
lbl_80B1F370:
/* 80B1F370  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B1F374  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B1F378  7C 08 03 A6 */	mtlr r0
/* 80B1F37C  38 21 00 10 */	addi r1, r1, 0x10
/* 80B1F380  4E 80 00 20 */	blr 
