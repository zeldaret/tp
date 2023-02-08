lbl_80D1825C:
/* 80D1825C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D18260  7C 08 02 A6 */	mflr r0
/* 80D18264  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D18268  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D1826C  93 C1 00 08 */	stw r30, 8(r1)
/* 80D18270  7C 7E 1B 78 */	mr r30, r3
/* 80D18274  7C 9F 23 78 */	mr r31, r4
/* 80D18278  48 00 00 51 */	bl moveMain__12daTogeTrap_cFv
/* 80D1827C  80 7E 0A D4 */	lwz r3, 0xad4(r30)
/* 80D18280  38 03 00 24 */	addi r0, r3, 0x24
/* 80D18284  90 1F 00 00 */	stw r0, 0(r31)
/* 80D18288  7F C3 F3 78 */	mr r3, r30
/* 80D1828C  4B FF F9 E9 */	bl setBaseMtx__12daTogeTrap_cFv
/* 80D18290  4B 31 77 C5 */	bl dComIfGs_wolfeye_effect_check__Fv
/* 80D18294  2C 03 00 00 */	cmpwi r3, 0
/* 80D18298  40 82 00 0C */	bne lbl_80D182A4
/* 80D1829C  38 00 00 00 */	li r0, 0
/* 80D182A0  98 1E 0A DF */	stb r0, 0xadf(r30)
lbl_80D182A4:
/* 80D182A4  38 00 00 00 */	li r0, 0
/* 80D182A8  98 1E 0A DD */	stb r0, 0xadd(r30)
/* 80D182AC  38 60 00 01 */	li r3, 1
/* 80D182B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D182B4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D182B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D182BC  7C 08 03 A6 */	mtlr r0
/* 80D182C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D182C4  4E 80 00 20 */	blr 
