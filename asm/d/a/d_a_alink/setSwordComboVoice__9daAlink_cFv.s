lbl_800D2304:
/* 800D2304  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800D2308  7C 08 02 A6 */	mflr r0
/* 800D230C  90 01 00 14 */	stw r0, 0x14(r1)
/* 800D2310  A0 03 2F E8 */	lhz r0, 0x2fe8(r3)
/* 800D2314  28 00 00 26 */	cmplwi r0, 0x26
/* 800D2318  41 82 00 10 */	beq lbl_800D2328
/* 800D231C  88 03 05 69 */	lbz r0, 0x569(r3)
/* 800D2320  28 00 00 04 */	cmplwi r0, 4
/* 800D2324  40 82 00 14 */	bne lbl_800D2338
lbl_800D2328:
/* 800D2328  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010001@ha */
/* 800D232C  38 84 00 01 */	addi r4, r4, 0x0001 /* 0x00010001@l */
/* 800D2330  4B FF FF 55 */	bl setSwordVoiceSe__9daAlink_cFUl
/* 800D2334  48 00 00 24 */	b lbl_800D2358
lbl_800D2338:
/* 800D2338  28 00 00 01 */	cmplwi r0, 1
/* 800D233C  40 82 00 10 */	bne lbl_800D234C
/* 800D2340  3C 80 00 01 */	lis r4, 1
/* 800D2344  4B FF FF 41 */	bl setSwordVoiceSe__9daAlink_cFUl
/* 800D2348  48 00 00 10 */	b lbl_800D2358
lbl_800D234C:
/* 800D234C  3C 80 00 01 */	lis r4, 0x0001 /* 0x00010004@ha */
/* 800D2350  38 84 00 04 */	addi r4, r4, 0x0004 /* 0x00010004@l */
/* 800D2354  4B FF FF 31 */	bl setSwordVoiceSe__9daAlink_cFUl
lbl_800D2358:
/* 800D2358  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800D235C  7C 08 03 A6 */	mtlr r0
/* 800D2360  38 21 00 10 */	addi r1, r1, 0x10
/* 800D2364  4E 80 00 20 */	blr 
