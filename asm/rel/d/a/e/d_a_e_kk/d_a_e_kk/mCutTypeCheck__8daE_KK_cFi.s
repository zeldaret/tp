lbl_806FABC0:
/* 806FABC0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806FABC4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806FABC8  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 806FABCC  2C 04 00 00 */	cmpwi r4, 0
/* 806FABD0  40 82 00 18 */	bne lbl_806FABE8
/* 806FABD4  88 03 05 69 */	lbz r0, 0x569(r3)
/* 806FABD8  28 00 00 04 */	cmplwi r0, 4
/* 806FABDC  41 80 00 0C */	blt lbl_806FABE8
/* 806FABE0  38 60 00 01 */	li r3, 1
/* 806FABE4  4E 80 00 20 */	blr 
lbl_806FABE8:
/* 806FABE8  2C 04 00 02 */	cmpwi r4, 2
/* 806FABEC  41 82 00 34 */	beq lbl_806FAC20
/* 806FABF0  88 03 05 68 */	lbz r0, 0x568(r3)
/* 806FABF4  28 00 00 08 */	cmplwi r0, 8
/* 806FABF8  41 82 00 20 */	beq lbl_806FAC18
/* 806FABFC  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 806FAC00  28 00 00 0A */	cmplwi r0, 0xa
/* 806FAC04  41 82 00 14 */	beq lbl_806FAC18
/* 806FAC08  28 00 00 1E */	cmplwi r0, 0x1e
/* 806FAC0C  41 82 00 0C */	beq lbl_806FAC18
/* 806FAC10  28 00 00 16 */	cmplwi r0, 0x16
/* 806FAC14  40 82 00 0C */	bne lbl_806FAC20
lbl_806FAC18:
/* 806FAC18  38 60 00 01 */	li r3, 1
/* 806FAC1C  4E 80 00 20 */	blr 
lbl_806FAC20:
/* 806FAC20  88 03 05 68 */	lbz r0, 0x568(r3)
/* 806FAC24  28 00 00 13 */	cmplwi r0, 0x13
/* 806FAC28  41 82 00 30 */	beq lbl_806FAC58
/* 806FAC2C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 806FAC30  28 00 00 14 */	cmplwi r0, 0x14
/* 806FAC34  41 82 00 24 */	beq lbl_806FAC58
/* 806FAC38  28 00 00 17 */	cmplwi r0, 0x17
/* 806FAC3C  41 82 00 1C */	beq lbl_806FAC58
/* 806FAC40  28 00 00 18 */	cmplwi r0, 0x18
/* 806FAC44  41 82 00 14 */	beq lbl_806FAC58
/* 806FAC48  28 00 00 1A */	cmplwi r0, 0x1a
/* 806FAC4C  41 82 00 0C */	beq lbl_806FAC58
/* 806FAC50  28 00 00 1F */	cmplwi r0, 0x1f
/* 806FAC54  40 82 00 0C */	bne lbl_806FAC60
lbl_806FAC58:
/* 806FAC58  38 60 00 01 */	li r3, 1
/* 806FAC5C  4E 80 00 20 */	blr 
lbl_806FAC60:
/* 806FAC60  28 00 00 05 */	cmplwi r0, 5
/* 806FAC64  41 82 00 0C */	beq lbl_806FAC70
/* 806FAC68  28 00 00 1E */	cmplwi r0, 0x1e
/* 806FAC6C  40 82 00 0C */	bne lbl_806FAC78
lbl_806FAC70:
/* 806FAC70  38 60 00 01 */	li r3, 1
/* 806FAC74  4E 80 00 20 */	blr 
lbl_806FAC78:
/* 806FAC78  38 60 00 00 */	li r3, 0
/* 806FAC7C  4E 80 00 20 */	blr 
