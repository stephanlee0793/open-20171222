from django.contrib import admin
from .models import Post


@admin.register(Post)
class PostAdmin(admin.ModelAdmin):
    list_display = ['title', 'get_length', 'created_at', 'updated_at']
    list_filter = ['created_at']
    search_fields = ['title']
    
    def get_length(self, post):
        return len(post.content)
    get_length.short_description = '내용 글자수'
