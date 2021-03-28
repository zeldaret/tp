lbl_80483B7C:
/* 80483B7C  88 83 05 BF */	lbz r4, 0x5bf(r3)
/* 80483B80  28 04 00 00 */	cmplwi r4, 0
/* 80483B84  41 82 00 0C */	beq lbl_80483B90
/* 80483B88  38 04 FF FF */	addi r0, r4, -1
/* 80483B8C  98 03 05 BF */	stb r0, 0x5bf(r3)
lbl_80483B90:
/* 80483B90  88 03 05 C4 */	lbz r0, 0x5c4(r3)
/* 80483B94  28 00 00 00 */	cmplwi r0, 0
/* 80483B98  41 82 00 78 */	beq lbl_80483C10
/* 80483B9C  88 03 05 C0 */	lbz r0, 0x5c0(r3)
/* 80483BA0  28 00 00 00 */	cmplwi r0, 0
/* 80483BA4  41 82 00 4C */	beq lbl_80483BF0
/* 80483BA8  28 00 00 02 */	cmplwi r0, 2
/* 80483BAC  40 82 00 24 */	bne lbl_80483BD0
/* 80483BB0  80 03 05 AC */	lwz r0, 0x5ac(r3)
/* 80483BB4  1C A0 00 2C */	mulli r5, r0, 0x2c
/* 80483BB8  3C 80 80 48 */	lis r4, M_attr__Q211daObjSwpush5Act_c@ha
/* 80483BBC  38 04 4D 2C */	addi r0, r4, M_attr__Q211daObjSwpush5Act_c@l
/* 80483BC0  7C 80 2A 14 */	add r4, r0, r5
/* 80483BC4  A8 04 00 1E */	lha r0, 0x1e(r4)
/* 80483BC8  B0 03 05 C2 */	sth r0, 0x5c2(r3)
/* 80483BCC  48 00 00 94 */	b lbl_80483C60
lbl_80483BD0:
/* 80483BD0  80 03 05 AC */	lwz r0, 0x5ac(r3)
/* 80483BD4  1C A0 00 2C */	mulli r5, r0, 0x2c
/* 80483BD8  3C 80 80 48 */	lis r4, M_attr__Q211daObjSwpush5Act_c@ha
/* 80483BDC  38 04 4D 2C */	addi r0, r4, M_attr__Q211daObjSwpush5Act_c@l
/* 80483BE0  7C 80 2A 14 */	add r4, r0, r5
/* 80483BE4  A8 04 00 1A */	lha r0, 0x1a(r4)
/* 80483BE8  B0 03 05 C2 */	sth r0, 0x5c2(r3)
/* 80483BEC  48 00 00 74 */	b lbl_80483C60
lbl_80483BF0:
/* 80483BF0  A8 83 05 C2 */	lha r4, 0x5c2(r3)
/* 80483BF4  38 04 FF FF */	addi r0, r4, -1
/* 80483BF8  B0 03 05 C2 */	sth r0, 0x5c2(r3)
/* 80483BFC  7C 00 07 35 */	extsh. r0, r0
/* 80483C00  41 81 00 60 */	bgt lbl_80483C60
/* 80483C04  38 00 00 00 */	li r0, 0
/* 80483C08  98 03 05 C4 */	stb r0, 0x5c4(r3)
/* 80483C0C  48 00 00 54 */	b lbl_80483C60
lbl_80483C10:
/* 80483C10  88 03 05 C0 */	lbz r0, 0x5c0(r3)
/* 80483C14  28 00 00 00 */	cmplwi r0, 0
/* 80483C18  41 82 00 40 */	beq lbl_80483C58
/* 80483C1C  A8 83 05 C2 */	lha r4, 0x5c2(r3)
/* 80483C20  38 04 00 01 */	addi r0, r4, 1
/* 80483C24  B0 03 05 C2 */	sth r0, 0x5c2(r3)
/* 80483C28  7C 06 07 34 */	extsh r6, r0
/* 80483C2C  80 03 05 AC */	lwz r0, 0x5ac(r3)
/* 80483C30  1C A0 00 2C */	mulli r5, r0, 0x2c
/* 80483C34  3C 80 80 48 */	lis r4, M_attr__Q211daObjSwpush5Act_c@ha
/* 80483C38  38 04 4D 2C */	addi r0, r4, M_attr__Q211daObjSwpush5Act_c@l
/* 80483C3C  7C 80 2A 14 */	add r4, r0, r5
/* 80483C40  A8 04 00 1A */	lha r0, 0x1a(r4)
/* 80483C44  7C 06 00 00 */	cmpw r6, r0
/* 80483C48  41 80 00 18 */	blt lbl_80483C60
/* 80483C4C  38 00 00 01 */	li r0, 1
/* 80483C50  98 03 05 C4 */	stb r0, 0x5c4(r3)
/* 80483C54  48 00 00 0C */	b lbl_80483C60
lbl_80483C58:
/* 80483C58  38 00 00 00 */	li r0, 0
/* 80483C5C  B0 03 05 C2 */	sth r0, 0x5c2(r3)
lbl_80483C60:
/* 80483C60  88 03 05 CA */	lbz r0, 0x5ca(r3)
/* 80483C64  28 00 00 00 */	cmplwi r0, 0
/* 80483C68  41 82 00 50 */	beq lbl_80483CB8
/* 80483C6C  88 03 05 C6 */	lbz r0, 0x5c6(r3)
/* 80483C70  28 00 00 00 */	cmplwi r0, 0
/* 80483C74  41 82 00 24 */	beq lbl_80483C98
/* 80483C78  80 03 05 AC */	lwz r0, 0x5ac(r3)
/* 80483C7C  1C A0 00 2C */	mulli r5, r0, 0x2c
/* 80483C80  3C 80 80 48 */	lis r4, M_attr__Q211daObjSwpush5Act_c@ha
/* 80483C84  38 04 4D 2C */	addi r0, r4, M_attr__Q211daObjSwpush5Act_c@l
/* 80483C88  7C 80 2A 14 */	add r4, r0, r5
/* 80483C8C  A8 04 00 1C */	lha r0, 0x1c(r4)
/* 80483C90  B0 03 05 C8 */	sth r0, 0x5c8(r3)
/* 80483C94  4E 80 00 20 */	blr 
lbl_80483C98:
/* 80483C98  A8 83 05 C8 */	lha r4, 0x5c8(r3)
/* 80483C9C  38 04 FF FF */	addi r0, r4, -1
/* 80483CA0  B0 03 05 C8 */	sth r0, 0x5c8(r3)
/* 80483CA4  7C 00 07 35 */	extsh. r0, r0
/* 80483CA8  4D 81 00 20 */	bgtlr 
/* 80483CAC  38 00 00 00 */	li r0, 0
/* 80483CB0  98 03 05 CA */	stb r0, 0x5ca(r3)
/* 80483CB4  4E 80 00 20 */	blr 
lbl_80483CB8:
/* 80483CB8  88 03 05 C6 */	lbz r0, 0x5c6(r3)
/* 80483CBC  28 00 00 00 */	cmplwi r0, 0
/* 80483CC0  41 82 00 40 */	beq lbl_80483D00
/* 80483CC4  A8 83 05 C8 */	lha r4, 0x5c8(r3)
/* 80483CC8  38 04 00 01 */	addi r0, r4, 1
/* 80483CCC  B0 03 05 C8 */	sth r0, 0x5c8(r3)
/* 80483CD0  7C 06 07 34 */	extsh r6, r0
/* 80483CD4  80 03 05 AC */	lwz r0, 0x5ac(r3)
/* 80483CD8  1C A0 00 2C */	mulli r5, r0, 0x2c
/* 80483CDC  3C 80 80 48 */	lis r4, M_attr__Q211daObjSwpush5Act_c@ha
/* 80483CE0  38 04 4D 2C */	addi r0, r4, M_attr__Q211daObjSwpush5Act_c@l
/* 80483CE4  7C 80 2A 14 */	add r4, r0, r5
/* 80483CE8  A8 04 00 1C */	lha r0, 0x1c(r4)
/* 80483CEC  7C 06 00 00 */	cmpw r6, r0
/* 80483CF0  4D 80 00 20 */	bltlr 
/* 80483CF4  38 00 00 01 */	li r0, 1
/* 80483CF8  98 03 05 CA */	stb r0, 0x5ca(r3)
/* 80483CFC  4E 80 00 20 */	blr 
lbl_80483D00:
/* 80483D00  38 00 00 00 */	li r0, 0
/* 80483D04  B0 03 05 C8 */	sth r0, 0x5c8(r3)
/* 80483D08  4E 80 00 20 */	blr 
