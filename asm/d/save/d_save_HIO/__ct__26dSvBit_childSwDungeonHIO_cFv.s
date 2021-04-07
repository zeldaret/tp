lbl_8025BC14:
/* 8025BC14  3C 80 80 3C */	lis r4, __vt__26dSvBit_childSwDungeonHIO_c@ha /* 0x803C3378@ha */
/* 8025BC18  38 04 33 78 */	addi r0, r4, __vt__26dSvBit_childSwDungeonHIO_c@l /* 0x803C3378@l */
/* 8025BC1C  90 03 00 00 */	stw r0, 0(r3)
/* 8025BC20  38 C0 00 00 */	li r6, 0
/* 8025BC24  38 80 00 00 */	li r4, 0
/* 8025BC28  38 00 00 40 */	li r0, 0x40
/* 8025BC2C  7C 09 03 A6 */	mtctr r0
lbl_8025BC30:
/* 8025BC30  7C A3 32 14 */	add r5, r3, r6
/* 8025BC34  98 85 00 05 */	stb r4, 5(r5)
/* 8025BC38  98 85 00 45 */	stb r4, 0x45(r5)
/* 8025BC3C  38 C6 00 01 */	addi r6, r6, 1
/* 8025BC40  42 00 FF F0 */	bdnz lbl_8025BC30
/* 8025BC44  4E 80 00 20 */	blr 
