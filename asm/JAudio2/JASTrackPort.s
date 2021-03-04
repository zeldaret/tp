.include "macros.inc"

.section .text, "ax" # 8029354c


.global init__12JASTrackPortFv
init__12JASTrackPortFv:
/* 8029354C 0029048C  38 80 00 00 */	li r4, 0
/* 80293550 00290490  7C 85 23 78 */	mr r5, r4
/* 80293554 00290494  38 00 00 10 */	li r0, 0x10
/* 80293558 00290498  7C 09 03 A6 */	mtctr r0
lbl_8029355C:
/* 8029355C 0029049C  38 04 00 04 */	addi r0, r4, 4
/* 80293560 002904A0  7C A3 03 2E */	sthx r5, r3, r0
/* 80293564 002904A4  38 84 00 02 */	addi r4, r4, 2
/* 80293568 002904A8  42 00 FF F4 */	bdnz lbl_8029355C
/* 8029356C 002904AC  38 00 00 00 */	li r0, 0
/* 80293570 002904B0  B0 03 00 00 */	sth r0, 0(r3)
/* 80293574 002904B4  B0 03 00 02 */	sth r0, 2(r3)
/* 80293578 002904B8  4E 80 00 20 */	blr 

.global readImport__12JASTrackPortFUl
readImport__12JASTrackPortFUl:
/* 8029357C 002904BC  A0 A3 00 00 */	lhz r5, 0(r3)
/* 80293580 002904C0  38 00 00 01 */	li r0, 1
/* 80293584 002904C4  7C 00 20 30 */	slw r0, r0, r4
/* 80293588 002904C8  7C A0 00 78 */	andc r0, r5, r0
/* 8029358C 002904CC  B0 03 00 00 */	sth r0, 0(r3)
/* 80293590 002904D0  54 80 08 3C */	slwi r0, r4, 1
/* 80293594 002904D4  7C 63 02 14 */	add r3, r3, r0
/* 80293598 002904D8  A0 63 00 04 */	lhz r3, 4(r3)
/* 8029359C 002904DC  4E 80 00 20 */	blr 

.global readExport__12JASTrackPortFUl
readExport__12JASTrackPortFUl:
/* 802935A0 002904E0  A0 A3 00 02 */	lhz r5, 2(r3)
/* 802935A4 002904E4  38 00 00 01 */	li r0, 1
/* 802935A8 002904E8  7C 00 20 30 */	slw r0, r0, r4
/* 802935AC 002904EC  7C A0 00 78 */	andc r0, r5, r0
/* 802935B0 002904F0  B0 03 00 02 */	sth r0, 2(r3)
/* 802935B4 002904F4  54 80 08 3C */	slwi r0, r4, 1
/* 802935B8 002904F8  7C 63 02 14 */	add r3, r3, r0
/* 802935BC 002904FC  A0 63 00 04 */	lhz r3, 4(r3)
/* 802935C0 00290500  4E 80 00 20 */	blr 

.global writeImport__12JASTrackPortFUlUs
writeImport__12JASTrackPortFUlUs:
/* 802935C4 00290504  A0 C3 00 00 */	lhz r6, 0(r3)
/* 802935C8 00290508  38 00 00 01 */	li r0, 1
/* 802935CC 0029050C  7C 00 20 30 */	slw r0, r0, r4
/* 802935D0 00290510  7C C0 03 78 */	or r0, r6, r0
/* 802935D4 00290514  B0 03 00 00 */	sth r0, 0(r3)
/* 802935D8 00290518  54 80 08 3C */	slwi r0, r4, 1
/* 802935DC 0029051C  7C 63 02 14 */	add r3, r3, r0
/* 802935E0 00290520  B0 A3 00 04 */	sth r5, 4(r3)
/* 802935E4 00290524  4E 80 00 20 */	blr 

.global writeExport__12JASTrackPortFUlUs
writeExport__12JASTrackPortFUlUs:
/* 802935E8 00290528  A0 C3 00 02 */	lhz r6, 2(r3)
/* 802935EC 0029052C  38 00 00 01 */	li r0, 1
/* 802935F0 00290530  7C 00 20 30 */	slw r0, r0, r4
/* 802935F4 00290534  7C C0 03 78 */	or r0, r6, r0
/* 802935F8 00290538  B0 03 00 02 */	sth r0, 2(r3)
/* 802935FC 0029053C  54 80 08 3C */	slwi r0, r4, 1
/* 80293600 00290540  7C 63 02 14 */	add r3, r3, r0
/* 80293604 00290544  B0 A3 00 04 */	sth r5, 4(r3)
/* 80293608 00290548  4E 80 00 20 */	blr 

.global checkImport__12JASTrackPortCFUl
checkImport__12JASTrackPortCFUl:
/* 8029360C 0029054C  A0 63 00 00 */	lhz r3, 0(r3)
/* 80293610 00290550  38 00 00 01 */	li r0, 1
/* 80293614 00290554  7C 00 20 30 */	slw r0, r0, r4
/* 80293618 00290558  7C 63 00 38 */	and r3, r3, r0
/* 8029361C 0029055C  30 03 FF FF */	addic r0, r3, -1
/* 80293620 00290560  7C 60 19 10 */	subfe r3, r0, r3
/* 80293624 00290564  4E 80 00 20 */	blr 

.global checkExport__12JASTrackPortCFUl
checkExport__12JASTrackPortCFUl:
/* 80293628 00290568  A0 63 00 02 */	lhz r3, 2(r3)
/* 8029362C 0029056C  38 00 00 01 */	li r0, 1
/* 80293630 00290570  7C 00 20 30 */	slw r0, r0, r4
/* 80293634 00290574  7C 63 00 38 */	and r3, r3, r0
/* 80293638 00290578  30 03 FF FF */	addic r0, r3, -1
/* 8029363C 0029057C  7C 60 19 10 */	subfe r3, r0, r3
/* 80293640 00290580  4E 80 00 20 */	blr 

