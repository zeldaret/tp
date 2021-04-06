lbl_801F12F0:
/* 801F12F0  88 03 01 BC */	lbz r0, 0x1bc(r3)
/* 801F12F4  28 00 00 02 */	cmplwi r0, 2
/* 801F12F8  4D 82 00 20 */	beqlr 
/* 801F12FC  3C 80 80 3F */	lis r4, g_mDoMemCd_control@ha /* 0x803EAF40@ha */
/* 801F1300  38 A4 AF 40 */	addi r5, r4, g_mDoMemCd_control@l /* 0x803EAF40@l */
/* 801F1304  88 05 1F BE */	lbz r0, 0x1fbe(r5)
/* 801F1308  28 00 00 00 */	cmplwi r0, 0
/* 801F130C  41 82 00 0C */	beq lbl_801F1318
/* 801F1310  28 00 00 01 */	cmplwi r0, 1
/* 801F1314  4C 82 00 20 */	bnelr 
lbl_801F1318:
/* 801F1318  80 8D 86 F8 */	lwz r4, mResetData__6mDoRst(r13)
/* 801F131C  80 04 00 00 */	lwz r0, 0(r4)
/* 801F1320  2C 00 00 00 */	cmpwi r0, 0
/* 801F1324  4C 82 00 20 */	bnelr 
/* 801F1328  88 03 01 BF */	lbz r0, 0x1bf(r3)
/* 801F132C  28 00 00 00 */	cmplwi r0, 0
/* 801F1330  40 82 00 3C */	bne lbl_801F136C
/* 801F1334  80 83 21 8C */	lwz r4, 0x218c(r3)
/* 801F1338  28 04 00 00 */	cmplwi r4, 0
/* 801F133C  41 82 00 28 */	beq lbl_801F1364
/* 801F1340  88 04 00 60 */	lbz r0, 0x60(r4)
/* 801F1344  28 00 00 00 */	cmplwi r0, 0
/* 801F1348  41 82 00 1C */	beq lbl_801F1364
/* 801F134C  28 00 00 03 */	cmplwi r0, 3
/* 801F1350  41 82 00 0C */	beq lbl_801F135C
/* 801F1354  28 00 00 04 */	cmplwi r0, 4
/* 801F1358  40 82 00 0C */	bne lbl_801F1364
lbl_801F135C:
/* 801F135C  38 00 00 01 */	li r0, 1
/* 801F1360  98 04 00 65 */	stb r0, 0x65(r4)
lbl_801F1364:
/* 801F1364  38 00 00 06 */	li r0, 6
/* 801F1368  98 03 01 B2 */	stb r0, 0x1b2(r3)
lbl_801F136C:
/* 801F136C  38 00 00 02 */	li r0, 2
/* 801F1370  98 05 1F BE */	stb r0, 0x1fbe(r5)
/* 801F1374  4E 80 00 20 */	blr 
