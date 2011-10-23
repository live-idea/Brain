/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/* Eliminate the comment by fading it out */
$('#comment_<%= @comment.id %>').fadeOut();
/* Replace the count of comments */
$("#comments_count").html("<%= pluralize(Comment.count, 'Comentari') %>");
