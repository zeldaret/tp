.include "macros.inc"

.section .text, "ax" # 8034bcfc


.global __DVDPrintFatalMessage
__DVDPrintFatalMessage:
/* 8034BCFC 00348C3C  7C 08 02 A6 */	mflr r0
/* 8034BD00 00348C40  90 01 00 04 */	stw r0, 4(r1)
/* 8034BD04 00348C44  94 21 FF F8 */	stwu r1, -8(r1)
/* 8034BD08 00348C48  81 8D 92 48 */	lwz r12, lbl_804517C8-_SDA_BASE_(r13)
/* 8034BD0C 00348C4C  28 0C 00 00 */	cmplwi r12, 0
/* 8034BD10 00348C50  41 82 00 0C */	beq lbl_8034BD1C
/* 8034BD14 00348C54  7D 88 03 A6 */	mtlr r12
/* 8034BD18 00348C58  4E 80 00 21 */	blrl 
lbl_8034BD1C:
/* 8034BD1C 00348C5C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8034BD20 00348C60  38 21 00 08 */	addi r1, r1, 8
/* 8034BD24 00348C64  7C 08 03 A6 */	mtlr r0
/* 8034BD28 00348C68  4E 80 00 20 */	blr 
